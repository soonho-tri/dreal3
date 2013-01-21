let fail_counter = ref 0
let fc () =
  (incr fail_counter;
   !fail_counter)

let print_msg prec f e eval =
  begin
    BatString.println BatIO.stdout "FAIL TO PROVE THIS AXIOM:";
    BatString.println BatIO.stdout "============================";
    BatString.print BatIO.stdout   "Precision = ";
    BatFloat.print BatIO.stdout prec;
    BatString.println BatIO.stdout   "";
    BatString.println BatIO.stdout "============================";
    BatString.println BatIO.stdout "Formulas: ";
    Basic.print_formula BatIO.stdout f;
    BatString.println BatIO.stdout "";
    BatString.println BatIO.stdout "============================";
    BatString.println BatIO.stdout "Environment: ";
    BatString.println BatIO.stdout (Env.to_string e);
    BatString.println BatIO.stdout "============================";
    BatString.println BatIO.stdout "Eval Result = ";
    Intv.print BatIO.stdout eval;
    BatString.println BatIO.stdout "============================";
  end

let get_new_filename () =
  let l = BatString.rfind !src ".trace" in
  let basename = BatString.left !src l in
  (basename ^ "_" ^ (string_of_int (counter())) ^ ".smt2")

let create_smt e cs prec =
  let vardecls = Env.to_list e in
  let (smt2_declvars, smt2_assertvars) =
    BatList.split
      (List.fold_left
         (fun result (name, {low = l; high = h}) ->
           let df = Smt2_cmd.DeclareFun name in
           let vd_lb =
             match l = neg_infinity with
             | true -> []
             | false -> [Smt2_cmd.make_lb name l]
           in
           let vd_ub =
             match h = infinity with
             | true -> []
             | false -> [Smt2_cmd.make_ub name h]
           in
           (df, BatList.concat [vd_lb;vd_ub])::result)
         []
         vardecls)
  in
  let smt2_assert_fs =
      Smt2_cmd.Assert (Basic.And cs)
  in
  BatList.concat
    [[Smt2_cmd.SetLogic Smt2_cmd.QF_NRA;
      Smt2_cmd.SetInfo (":precision", string_of_float prec)];
     smt2_declvars;
     BatList.concat smt2_assertvars;
     [smt2_assert_fs];
     [Smt2_cmd.CheckSAT;
      Smt2_cmd.Exit]]

let split_env_on_x key env : (Env.t * Env.t) =
  let vardecls = Env.to_list env in
  let vardecls_pairs = BatList.combine vardecls vardecls in
  let vardecls_pairs' =
    BatList.map
      (fun ((name1, {low = l1; high = h1}), (name2, {low = l2; high = h2}))
      -> if (key = name1) then
          let mid = ((l1 +. h1) /. 2.0) in
          ((name1, l1, mid), (name2, mid, h2))
        else
          ((name1, l1, h1), (name2, l2, h2))
      )
      vardecls_pairs
  in
  let (vardecls1, vardecls2) = BatList.split vardecls_pairs' in
  (Env.make vardecls1, Env.make vardecls2)

let split_env e f prec : (Env.t * Env.t * float) =
  let vars_in_f = Basic.collect_var_in_f f in
  let vardecls = Env.to_list e in
  let vardecls' =
    List.filter (fun (name, _) ->
      List.mem name vars_in_f && not (BatString.starts_with name "ITE_"))
      vardecls in
  let diff_list = List.map (fun (name, {low = l; high = h}) -> (name, h -. l)) vardecls' in
  let (max_key, intv_size) =
    List.fold_left
      (fun (cur_max_key, cur_max_size) (key, size) ->
        if size > cur_max_size  then
          (key, size)
        else
          (cur_max_key, cur_max_size))
      (List.hd diff_list)
      diff_list
  in
  let (e1, e2) = split_env_on_x max_key e in
  let new_prec = BatList.min [intv_size /. 4.0; prec] in
  (e1, e2, new_prec)

let handle_fail e f cs prec v =
  begin
    print_msg prec f e v;
    let (e1, e2, new_prec) = split_env e f prec in
    List.iter
      (fun env ->
        let smt2 = create_smt env cs new_prec in
        BatFile.with_file_out
          (get_new_filename ())
          (fun out -> Smt2.print out smt2))
      [e1; e2]
  end
