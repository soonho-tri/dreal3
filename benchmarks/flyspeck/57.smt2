(set-logic QF_NLR)
(declare-fun y1 () Real)
(declare-fun y2 () Real)
(declare-fun y3 () Real)
(declare-fun y4 () Real)
(declare-fun y5 () Real)
(declare-fun y6 () Real)
(assert
(and
(and (<= 2.18 y1) (<= y1 2.52))(and (<= 2.0 y2) (<= y2 2.52))(and (<= 2.0 y3) (<= y3 2.52))(and (<= 2.52 y4) (<= y4 2.82842712475))(and (<= 2.0 y5) (<= y5 2.52))(and (<= 2.0 y6) (<= y6 2.52))(not (> (+ (+ (/ 3.14159265 2.0) (ite (< (ite (<= 0.0 (- (+ (- (* (- (* y1 y1)) (* y3 y3)) (* (* y2 y2) (* y5 y5))) (+ (* (* y1 y1) (* y4 y4)) (+ (- (* (* y3 y3) (* y6 y6)) (* (* y4 y4) (* y6 y6))) (* (* y2 y2) (+ (- (* y2 y2)) (+ (* y1 y1) (+ (- (* y3 y3) (* y5 y5)) (+ (* y4 y4) (* y6 y6))))))))))) (- (+ (- (* (- (* y1 y1)) (* y3 y3)) (* (* y2 y2) (* y5 y5))) (+ (* (* y1 y1) (* y4 y4)) (+ (- (* (* y3 y3) (* y6 y6)) (* (* y4 y4) (* y6 y6))) (* (* y2 y2) (+ (- (* y2 y2)) (+ (* y1 y1) (+ (- (* y3 y3) (* y5 y5)) (+ (* y4 y4) (* y6 y6)))))))))) (- (- (+ (- (* (- (* y1 y1)) (* y3 y3)) (* (* y2 y2) (* y5 y5))) (+ (* (* y1 y1) (* y4 y4)) (+ (- (* (* y3 y3) (* y6 y6)) (* (* y4 y4) (* y6 y6))) (* (* y2 y2) (+ (- (* y2 y2)) (+ (* y1 y1) (+ (- (* y3 y3) (* y5 y5)) (+ (* y4 y4) (* y6 y6)))))))))))) (^ (* 4.0 (* (* y2 y2) (+ (* (* y2 y2) (* (* y5 y5) (+ (- (* y2 y2)) (+ (* y1 y1) (+ (- (* y3 y3) (* y5 y5)) (+ (* y4 y4) (* y6 y6))))))) (+ (* (* y1 y1) (* (* y4 y4) (+ (- (* y2 y2) (* y1 y1)) (+ (* y3 y3) (+ (- (* y5 y5) (* y4 y4)) (* y6 y6)))))) (- (- (- (- (* (* y3 y3) (* (* y6 y6) (+ (* y2 y2) (+ (- (* y1 y1) (* y3 y3)) (+ (* y5 y5) (- (* y4 y4) (* y6 y6))))))) (* (* y1 y1) (* (* y3 y3) (* y5 y5)))) (* (* y2 y2) (* (* y3 y3) (* y4 y4)))) (* (* y2 y2) (* (* y1 y1) (* y6 y6)))) (* (* y5 y5) (* (* y4 y4) (* y6 y6)))))))) 0.5)) (arctan (/ (- (+ (- (* (- (* y1 y1)) (* y3 y3)) (* (* y2 y2) (* y5 y5))) (+ (* (* y1 y1) (* y4 y4)) (+ (- (* (* y3 y3) (* y6 y6)) (* (* y4 y4) (* y6 y6))) (* (* y2 y2) (+ (- (* y2 y2)) (+ (* y1 y1) (+ (- (* y3 y3) (* y5 y5)) (+ (* y4 y4) (* y6 y6)))))))))) (^ (* 4.0 (* (* y2 y2) (+ (* (* y2 y2) (* (* y5 y5) (+ (- (* y2 y2)) (+ (* y1 y1) (+ (- (* y3 y3) (* y5 y5)) (+ (* y4 y4) (* y6 y6))))))) (+ (* (* y1 y1) (* (* y4 y4) (+ (- (* y2 y2) (* y1 y1)) (+ (* y3 y3) (+ (- (* y5 y5) (* y4 y4)) (* y6 y6)))))) (- (- (- (- (* (* y3 y3) (* (* y6 y6) (+ (* y2 y2) (+ (- (* y1 y1) (* y3 y3)) (+ (* y5 y5) (- (* y4 y4) (* y6 y6))))))) (* (* y1 y1) (* (* y3 y3) (* y5 y5)))) (* (* y2 y2) (* (* y3 y3) (* y4 y4)))) (* (* y2 y2) (* (* y1 y1) (* y6 y6)))) (* (* y5 y5) (* (* y4 y4) (* y6 y6)))))))) 0.5))) (ite (< 0.0 (- (+ (- (* (- (* y1 y1)) (* y3 y3)) (* (* y2 y2) (* y5 y5))) (+ (* (* y1 y1) (* y4 y4)) (+ (- (* (* y3 y3) (* y6 y6)) (* (* y4 y4) (* y6 y6))) (* (* y2 y2) (+ (- (* y2 y2)) (+ (* y1 y1) (+ (- (* y3 y3) (* y5 y5)) (+ (* y4 y4) (* y6 y6))))))))))) (- (/ 3.14159265 2.0) (arctan (/ (^ (* 4.0 (* (* y2 y2) (+ (* (* y2 y2) (* (* y5 y5) (+ (- (* y2 y2)) (+ (* y1 y1) (+ (- (* y3 y3) (* y5 y5)) (+ (* y4 y4) (* y6 y6))))))) (+ (* (* y1 y1) (* (* y4 y4) (+ (- (* y2 y2) (* y1 y1)) (+ (* y3 y3) (+ (- (* y5 y5) (* y4 y4)) (* y6 y6)))))) (- (- (- (- (* (* y3 y3) (* (* y6 y6) (+ (* y2 y2) (+ (- (* y1 y1) (* y3 y3)) (+ (* y5 y5) (- (* y4 y4) (* y6 y6))))))) (* (* y1 y1) (* (* y3 y3) (* y5 y5)))) (* (* y2 y2) (* (* y3 y3) (* y4 y4)))) (* (* y2 y2) (* (* y1 y1) (* y6 y6)))) (* (* y5 y5) (* (* y4 y4) (* y6 y6)))))))) 0.5) (- (+ (- (* (- (* y1 y1)) (* y3 y3)) (* (* y2 y2) (* y5 y5))) (+ (* (* y1 y1) (* y4 y4)) (+ (- (* (* y3 y3) (* y6 y6)) (* (* y4 y4) (* y6 y6))) (* (* y2 y2) (+ (- (* y2 y2)) (+ (* y1 y1) (+ (- (* y3 y3) (* y5 y5)) (+ (* y4 y4) (* y6 y6))))))))))))) (ite (< (- (+ (- (* (- (* y1 y1)) (* y3 y3)) (* (* y2 y2) (* y5 y5))) (+ (* (* y1 y1) (* y4 y4)) (+ (- (* (* y3 y3) (* y6 y6)) (* (* y4 y4) (* y6 y6))) (* (* y2 y2) (+ (- (* y2 y2)) (+ (* y1 y1) (+ (- (* y3 y3) (* y5 y5)) (+ (* y4 y4) (* y6 y6)))))))))) 0.0) (- (- (/ 3.14159265 2.0)) (arctan (/ (^ (* 4.0 (* (* y2 y2) (+ (* (* y2 y2) (* (* y5 y5) (+ (- (* y2 y2)) (+ (* y1 y1) (+ (- (* y3 y3) (* y5 y5)) (+ (* y4 y4) (* y6 y6))))))) (+ (* (* y1 y1) (* (* y4 y4) (+ (- (* y2 y2) (* y1 y1)) (+ (* y3 y3) (+ (- (* y5 y5) (* y4 y4)) (* y6 y6)))))) (- (- (- (- (* (* y3 y3) (* (* y6 y6) (+ (* y2 y2) (+ (- (* y1 y1) (* y3 y3)) (+ (* y5 y5) (- (* y4 y4) (* y6 y6))))))) (* (* y1 y1) (* (* y3 y3) (* y5 y5)))) (* (* y2 y2) (* (* y3 y3) (* y4 y4)))) (* (* y2 y2) (* (* y1 y1) (* y6 y6)))) (* (* y5 y5) (* (* y4 y4) (* y6 y6)))))))) 0.5) (- (+ (- (* (- (* y1 y1)) (* y3 y3)) (* (* y2 y2) (* y5 y5))) (+ (* (* y1 y1) (* y4 y4)) (+ (- (* (* y3 y3) (* y6 y6)) (* (* y4 y4) (* y6 y6))) (* (* y2 y2) (+ (- (* y2 y2)) (+ (* y1 y1) (+ (- (* y3 y3) (* y5 y5)) (+ (* y4 y4) (* y6 y6))))))))))))) 3.14159265)))) 0.0042) (+ 0.868174 (+ (* (- 0.701906) (+ (- 2.25) y1)) (+ (* 0.136514 (+ (- 2.0) y2)) (+ (* (- 0.209239) (+ (- 2.18) y3)) (+ (* (- 0.493373) (+ (- 2.65) y4)) (+ (* 0.537385 (+ (- 2.0) y5)) (* 0.0187672 (+ (- 2.2) y6)))))))))))
)
(check-sat)
(exit)
