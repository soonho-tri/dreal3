(set-logic QF_NLR)
(declare-fun y1 () Real)
(declare-fun y12 () Real)
(declare-fun y23 () Real)
(declare-fun y34 () Real)
(declare-fun y41 () Real)
(assert
(and
(and (<= 2.46350884418 y1) (<= y1 2.52))(and (<= 2.0 y12) (<= y12 2.46350884418))(and (<= 2.0 y23) (<= y23 2.46350884418))(and (<= 2.0 y34) (<= y34 2.46350884418))(and (<= 2.0 y41) (<= y41 2.46350884418))(not (< (+ (* 2.0 (* 3.14159265 0.129699)) (+ (* (+ (- 0.060316) (+ 0.019214 (+ 0.021887 0.019214))) y1) (+ (* 2.0 (* (+ 0.002264 (- 0.002264)) y12)) (+ (* 2.0 (* (+ (- 0.002264) 0.002264) y23)) (+ (* 2.0 (* (+ 0.002264 (- 0.002264)) y34)) (+ (* 2.0 (* (+ (- 0.002264) 0.002264) y41)) (+ (- 0.112116) (+ (- 0.203309) (+ (- 0.29619) (- 0.203309)))))))))) 0.0)))
)
(check-sat)
(exit)
