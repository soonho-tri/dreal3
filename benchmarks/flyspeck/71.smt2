(set-logic QF_NLR)
(declare-fun y1 () Real)
(declare-fun y2 () Real)
(declare-fun y3 () Real)
(declare-fun y4 () Real)
(declare-fun y5 () Real)
(declare-fun y6 () Real)
(assert
(and
(and (<= 2.0 y1) (<= y1 2.18))(and (<= 2.0 y2) (<= y2 2.18))(and (<= 2.0 y3) (<= y3 2.18))(and (<= 2.0 y4) (<= y4 2.52))(and (<= 2.25 y5) (<= y5 2.52))(and (<= 2.25 y6) (<= y6 2.52))(not (> (+ (+ (/ 3.14159265 2.0) (ite (< (ite (<= 0.0 (- (+ (- (* (- (* y2 y2)) (* y3 y3)) (* (* y1 y1) (* y4 y4))) (+ (* (* y2 y2) (* y5 y5)) (+ (- (* (* y3 y3) (* y6 y6)) (* (* y5 y5) (* y6 y6))) (* (* y1 y1) (+ (- (* y1 y1)) (+ (* y2 y2) (+ (- (* y3 y3) (* y4 y4)) (+ (* y5 y5) (* y6 y6))))))))))) (- (+ (- (* (- (* y2 y2)) (* y3 y3)) (* (* y1 y1) (* y4 y4))) (+ (* (* y2 y2) (* y5 y5)) (+ (- (* (* y3 y3) (* y6 y6)) (* (* y5 y5) (* y6 y6))) (* (* y1 y1) (+ (- (* y1 y1)) (+ (* y2 y2) (+ (- (* y3 y3) (* y4 y4)) (+ (* y5 y5) (* y6 y6)))))))))) (- (- (+ (- (* (- (* y2 y2)) (* y3 y3)) (* (* y1 y1) (* y4 y4))) (+ (* (* y2 y2) (* y5 y5)) (+ (- (* (* y3 y3) (* y6 y6)) (* (* y5 y5) (* y6 y6))) (* (* y1 y1) (+ (- (* y1 y1)) (+ (* y2 y2) (+ (- (* y3 y3) (* y4 y4)) (+ (* y5 y5) (* y6 y6)))))))))))) (^ (* 4.0 (* (* y1 y1) (+ (* (* y1 y1) (* (* y4 y4) (+ (- (* y1 y1)) (+ (* y2 y2) (+ (- (* y3 y3) (* y4 y4)) (+ (* y5 y5) (* y6 y6))))))) (+ (* (* y2 y2) (* (* y5 y5) (+ (- (* y1 y1) (* y2 y2)) (+ (* y3 y3) (+ (- (* y4 y4) (* y5 y5)) (* y6 y6)))))) (- (- (- (- (* (* y3 y3) (* (* y6 y6) (+ (* y1 y1) (+ (- (* y2 y2) (* y3 y3)) (+ (* y4 y4) (- (* y5 y5) (* y6 y6))))))) (* (* y2 y2) (* (* y3 y3) (* y4 y4)))) (* (* y1 y1) (* (* y3 y3) (* y5 y5)))) (* (* y1 y1) (* (* y2 y2) (* y6 y6)))) (* (* y4 y4) (* (* y5 y5) (* y6 y6)))))))) 0.5)) (arctan (/ (- (+ (- (* (- (* y2 y2)) (* y3 y3)) (* (* y1 y1) (* y4 y4))) (+ (* (* y2 y2) (* y5 y5)) (+ (- (* (* y3 y3) (* y6 y6)) (* (* y5 y5) (* y6 y6))) (* (* y1 y1) (+ (- (* y1 y1)) (+ (* y2 y2) (+ (- (* y3 y3) (* y4 y4)) (+ (* y5 y5) (* y6 y6)))))))))) (^ (* 4.0 (* (* y1 y1) (+ (* (* y1 y1) (* (* y4 y4) (+ (- (* y1 y1)) (+ (* y2 y2) (+ (- (* y3 y3) (* y4 y4)) (+ (* y5 y5) (* y6 y6))))))) (+ (* (* y2 y2) (* (* y5 y5) (+ (- (* y1 y1) (* y2 y2)) (+ (* y3 y3) (+ (- (* y4 y4) (* y5 y5)) (* y6 y6)))))) (- (- (- (- (* (* y3 y3) (* (* y6 y6) (+ (* y1 y1) (+ (- (* y2 y2) (* y3 y3)) (+ (* y4 y4) (- (* y5 y5) (* y6 y6))))))) (* (* y2 y2) (* (* y3 y3) (* y4 y4)))) (* (* y1 y1) (* (* y3 y3) (* y5 y5)))) (* (* y1 y1) (* (* y2 y2) (* y6 y6)))) (* (* y4 y4) (* (* y5 y5) (* y6 y6)))))))) 0.5))) (ite (< 0.0 (- (+ (- (* (- (* y2 y2)) (* y3 y3)) (* (* y1 y1) (* y4 y4))) (+ (* (* y2 y2) (* y5 y5)) (+ (- (* (* y3 y3) (* y6 y6)) (* (* y5 y5) (* y6 y6))) (* (* y1 y1) (+ (- (* y1 y1)) (+ (* y2 y2) (+ (- (* y3 y3) (* y4 y4)) (+ (* y5 y5) (* y6 y6))))))))))) (- (/ 3.14159265 2.0) (arctan (/ (^ (* 4.0 (* (* y1 y1) (+ (* (* y1 y1) (* (* y4 y4) (+ (- (* y1 y1)) (+ (* y2 y2) (+ (- (* y3 y3) (* y4 y4)) (+ (* y5 y5) (* y6 y6))))))) (+ (* (* y2 y2) (* (* y5 y5) (+ (- (* y1 y1) (* y2 y2)) (+ (* y3 y3) (+ (- (* y4 y4) (* y5 y5)) (* y6 y6)))))) (- (- (- (- (* (* y3 y3) (* (* y6 y6) (+ (* y1 y1) (+ (- (* y2 y2) (* y3 y3)) (+ (* y4 y4) (- (* y5 y5) (* y6 y6))))))) (* (* y2 y2) (* (* y3 y3) (* y4 y4)))) (* (* y1 y1) (* (* y3 y3) (* y5 y5)))) (* (* y1 y1) (* (* y2 y2) (* y6 y6)))) (* (* y4 y4) (* (* y5 y5) (* y6 y6)))))))) 0.5) (- (+ (- (* (- (* y2 y2)) (* y3 y3)) (* (* y1 y1) (* y4 y4))) (+ (* (* y2 y2) (* y5 y5)) (+ (- (* (* y3 y3) (* y6 y6)) (* (* y5 y5) (* y6 y6))) (* (* y1 y1) (+ (- (* y1 y1)) (+ (* y2 y2) (+ (- (* y3 y3) (* y4 y4)) (+ (* y5 y5) (* y6 y6))))))))))))) (ite (< (- (+ (- (* (- (* y2 y2)) (* y3 y3)) (* (* y1 y1) (* y4 y4))) (+ (* (* y2 y2) (* y5 y5)) (+ (- (* (* y3 y3) (* y6 y6)) (* (* y5 y5) (* y6 y6))) (* (* y1 y1) (+ (- (* y1 y1)) (+ (* y2 y2) (+ (- (* y3 y3) (* y4 y4)) (+ (* y5 y5) (* y6 y6)))))))))) 0.0) (- (- (/ 3.14159265 2.0)) (arctan (/ (^ (* 4.0 (* (* y1 y1) (+ (* (* y1 y1) (* (* y4 y4) (+ (- (* y1 y1)) (+ (* y2 y2) (+ (- (* y3 y3) (* y4 y4)) (+ (* y5 y5) (* y6 y6))))))) (+ (* (* y2 y2) (* (* y5 y5) (+ (- (* y1 y1) (* y2 y2)) (+ (* y3 y3) (+ (- (* y4 y4) (* y5 y5)) (* y6 y6)))))) (- (- (- (- (* (* y3 y3) (* (* y6 y6) (+ (* y1 y1) (+ (- (* y2 y2) (* y3 y3)) (+ (* y4 y4) (- (* y5 y5) (* y6 y6))))))) (* (* y2 y2) (* (* y3 y3) (* y4 y4)))) (* (* y1 y1) (* (* y3 y3) (* y5 y5)))) (* (* y1 y1) (* (* y2 y2) (* y6 y6)))) (* (* y4 y4) (* (* y5 y5) (* y6 y6)))))))) 0.5) (- (+ (- (* (- (* y2 y2)) (* y3 y3)) (* (* y1 y1) (* y4 y4))) (+ (* (* y2 y2) (* y5 y5)) (+ (- (* (* y3 y3) (* y6 y6)) (* (* y5 y5) (* y6 y6))) (* (* y1 y1) (+ (- (* y1 y1)) (+ (* y2 y2) (+ (- (* y3 y3) (* y4 y4)) (+ (* y5 y5) (* y6 y6))))))))))))) 3.14159265)))) 0.0071) (+ 1.09969 (+ (* 0.146345 (+ (- 2.0) y1)) (+ (* (- 0.160538) (+ (- 2.0) y2)) (+ (* (- 0.151698) (+ (- 2.14) y3)) (+ (* 0.61314 (+ (- 2.0) y4)) (+ (* (- 0.236149) (+ (- 2.25) y5)) (* (- 0.242043) (+ (- 2.25) y6)))))))))))
)
(check-sat)
(exit)
