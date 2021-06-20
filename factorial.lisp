(write-line "Enter a number")
(setq n (read))
(defun factorial (x) 
    (if (= x 1)
        1
            (* x (factorial (- x 1)))))
(format t "Result is ~D" (factorial n))