(defvar x '())
(defvar locations '())
(defvar findint nil)


(loop
    (write-line "Please enter an integer to add to the list. Enter a non integer to exit")
    (setq input (read))
    (when (not (numberp input)) (return t))
    (setq x (append x (list input)))
)

(loop
    (write-line "Enter an integer to find")
    (setq findint (read))
    (when (numberp findint) (return t))
    (write-line "Not an integer. Try again!")
    (setq findint nil)
)

(defvar counter 0)

(loop for a in x
      for counter from 0
        if (= a findint)
        do (setq locations (append locations (list counter)))

) 
(print locations)