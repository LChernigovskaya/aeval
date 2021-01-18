(set-logic HORN)
(declare-datatypes () ((Lst (cons (head Int) (tail Lst)) (nil))))

(declare-fun len (Lst Int) Bool)

(assert (len nil 0))
(assert (forall ((x Int) (xs Lst) (ys Lst) (l Int)) 
           (=> (and (= xs (cons x ys)) (len ys l)) (len xs (+ l 1)))))

(declare-fun append (Lst Lst Lst) Bool)
(assert (forall ((xs Lst)) (append nil xs xs)))
(assert (forall ((x Int) (xs Lst) (ys Lst) (zs Lst) (rs Lst) (ts Lst)) 
	(=> (and (= xs (cons x ys)) (append ys zs rs) (= ts (cons x rs))) (append xs zs ts))))

(declare-fun rev2 (Lst Lst Lst) Bool)
(assert (forall ((a Lst)) (rev2 nil a a)))
(assert (forall ((x Int) (ts Lst) (xs Lst) (as Lst) (rs Lst) (us Lst))
	(=> (and (= xs (cons x ts)) (= rs (cons x as)) (rev2 ts rs us)) (rev2 xs as us)))) 

; extra lemma
(assert (forall ((xs Lst) (as Lst) (ts Lst) (us Lst) (ys Lst)) 
	(=> (and (rev2 xs nil ts) (append ts as us)) (rev2 xs as us))))
 (assert (forall ((x Lst) (y Lst) (z Lst) (lx Int) (ly Int)) 
	(=> (and (len x lx) (len y ly) (append x y z)) (len z (+ lx ly)))))

(assert (forall ((xs Lst) (ys Lst) (lx Int) (ly Int)) 
	(=> (and (rev2 xs nil ys) (len xs lx) (len ys ly) (not (= lx ly))) false)))

(check-sat)