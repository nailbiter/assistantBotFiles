;(use-modules (ice-9 format))
(load-option 'format)
;(use-modules (srfi srfi-1))

(define(seq a b)(if(>= a b)'()(cons a(seq(+ a 1)b))))
;;;get the value from the table of the format ((key1 val1)(key2 val2)...)
;;;@arg default -- default value to be returted if nothing found
(define(getkey table key default)
  (cond
    ((null? table)default)
    ((eq? key(caar table))(second(car table)))
    (else(getkey(cdr table)key))))
;;;generate random times
;;;@arg start -- start in format, e.g. "10:00"
;;;@arg end -- end in format, e.g. "10:00"
;;;@return list of times in format say, 10:10 -> '(10 10)
(define (randtimes start end count)
  (let*
    ((inc(lambda(x)(+ x 1)))
     (string-index string-find-next-char)
     (starthourS(substring start 0(string-index start #\:)))
     (startminS (substring start(inc(string-index start #\:))(string-length start)))
     (startmin(+(string->number startminS)(* 60(string->number starthourS))))
     (endminS (substring end(inc(string-index end #\:))(string-length end)))
     (endhourS (substring end 0(string-index end #\:)))
     (endmin(+(string->number endminS)(* 60(string->number endhourS))))
     (step(quotient(- endmin startmin)count))
     (timelist
       (map
         (lambda(s e)(+ s(random(- e s))))
         (map(lambda(i)(+ startmin(* i step)))(seq 0 count))
         (map(lambda(i)(+ startmin(* i step)))(seq 1(inc count)))))
     (minutestotime
       (lambda(minutes)(format #f "~2,'0d:~2,'0d"(quotient minutes 60)(remainder minutes 60)))))
    (map (lambda(t)(list(quotient t 60)(remainder t 60))) timelist)
    ))
;(define(makehabits start end count name len info . opt)
;  (map
;    (lambda(l idx)
;      (format 
;        #t
;        "{\"name\":\"~a~a\",\"cronline\":\"~a ~a * * *\",\"delaymin\":~a,\"enabled\":~a, \"category\" : \"german\"~a},~%"
;        name 
;        (+ idx 1)
;        (second l)
;        (first l)
;        len
;        (if(null? opt) "true" "false")
;        (if(not(string=? info ""))(format #f ",~%\t\"info\":\"~a\"" info)"")))
;    (randtimes start end count)
;    (seq 0 count)))
(define(makehabits start end count name len info . opt)
  (map
    (lambda(cronline name)(makehabit:inner cronline name len opt))
    (map(lambda(i)(format #f "~a ~a * * *"(second i)(first i)))(randtimes start end count))
    (map(lambda(i)(format #f "~a:~a" name i))(seq 0 count))))
(define(makehabit cronline name delaymin . opt)(makehabit:inner cronline name delaymin opt))
(define(makehabit:inner cronline name delaymin opt)
  (format 
    #t 
    "{\"cronline\":\"~a\",\"name\":\"~a\",\"count\":1,\"delaymin\":~a,\"enabled\":~a},~%"
    cronline
    name
    delaymin
    (if(null? opt) "true" "false")))
