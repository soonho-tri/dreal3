(set-logic QF_NLR)
(declare-fun y1 () Real)
(declare-fun y12 () Real)
(declare-fun y23 () Real)
(declare-fun y34 () Real)
(declare-fun y41 () Real)
(assert
(and
(and (<= 2.52 y1) (<= y1 2.6508))(and (<= 2.0 y12) (<= y12 2.46350884418))(and (<= 2.0 y23) (<= y23 2.46350884418))(and (<= 2.0 y34) (<= y34 2.46350884418))(and (<= 2.0 y41) (<= y41 2.46350884418))(not (< (+ (* 2.0 (* 3.14159265 0.129913)) (+ (* (+ (- 0.09152) (+ 0.291645 (+ (- 0.105208) (- 0.094917)))) y1) (+ (* 2.0 (* (+ 0.002372 (- 0.002372)) y12)) (+ (* 2.0 (* (+ (- 0.002372) 0.002372) y23)) (+ (* 2.0 (* (+ 0.002372 (- 0.002372)) y34)) (+ (* 2.0 (* (+ (- 0.002372) 0.002372) y41)) (+ (- 0.034749) (+ (- 0.939234) (+ 0.072849 0.084866))))))))) 0.0)))
)
(check-sat)
(exit)
