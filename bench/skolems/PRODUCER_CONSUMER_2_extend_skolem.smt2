(declare-fun $V87_First$2 () Int)
(declare-fun $V74_X$2 () Bool)
(declare-fun $etat1$0 () Bool)
(declare-fun $V26_i$2 () Int)
(declare-fun %init () Bool)
(declare-fun $V31_env$2 () Bool)
(declare-fun $V79_Sofar$~1 () Bool)
(declare-fun $V79_Sofar$2 () Bool)
(declare-fun $OK$2 () Bool)
(declare-fun $V87_First$~1 () Int)
(declare-fun $a_init$0 () Int)
(declare-fun $etat3$0 () Bool)
(declare-fun $etat2$0 () Bool)

(assert (let ((a!1 (and %init (= (+ (* (- 1) $a_init$0) $V87_First$~1) 0)))
      (a!2 (ite %init
                (not (and $etat2$0 $etat3$0))
                (and (not (and $etat2$0 $etat3$0)) $V79_Sofar$~1)))
      (a!6 (and (not %init) (= (+ (* (- 1) $V87_First$~1) $a_init$0) 0))))
(let ((a!3 (and (and (ite %init (not $etat1$0) true) a!2) (> $V87_First$~1 0)))
      (a!5 (and (or (not $etat2$0) (not $etat3$0))
                (or %init (and (not %init) $V79_Sofar$~1))
                (or a!1 (not %init))))
      (a!7 (and (and (ite %init (not $etat1$0) true) a!2) (> $a_init$0 0)))
      (a!9 (and (or (not $etat2$0) (not $etat3$0))
                (or %init (and (not %init) $V79_Sofar$~1))
                (or %init a!6))))
(let ((a!4 (and (= $OK$2 (or (not a!3) (>= 0 0)))
                (= $V31_env$2 a!3)
                (= $V26_i$2 0)
                (= $V79_Sofar$2 a!2)
                (= $V87_First$2 $V87_First$~1)
                (= $V74_X$2 (not (and $etat2$0 $etat3$0)))))
      (a!8 (and (= $OK$2 (or (>= 0 0) (not a!7)))
                (= $V31_env$2 a!7)
                (= $V26_i$2 0)
                (= $V79_Sofar$2 a!2)
                (= $V87_First$2 $a_init$0)
                (= $V74_X$2 (not (and $etat2$0 $etat3$0))))))
(let ((a!10 (ite a!5
                 a!4
                 (ite (and $etat2$0 $etat3$0 (or %init a!6))
                      a!8
                      (ite a!9 a!8 true)))))
(let ((a!11 (ite (and (or (not $etat2$0) (not $etat3$0))
                      (not %init)
                      (not $V79_Sofar$~1)
                      (or a!1 (not %init)))
                 a!4
                 a!10)))
  (ite (and $etat2$0 $etat3$0 (or a!1 (not %init))) a!4 a!11)))))))
(check-sat)
