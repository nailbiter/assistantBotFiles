;(use-modules (ice-9 format))
(load-option 'format)
;(use-modules (srfi srfi-1))

(define(seq a b)(if(>= a b)'()(cons a(seq(+ a 1)b))))
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
(define(makehabits start end count name len) 
  (map
  (lambda(l)
    (format #t
      "{\"name\":\"~a\",\"cronline\":\"~a ~a * * *\",\"delaymin\":~a,\"enabled\":true},~%"
      name(second l)(first l)len))
  (randtimes start end count)))
(define(makehabit cronline name delaymin)
  (format 
    #t 
    "{\"cronline\":\"~a\",\"name\":\"~a\",\"count\":1,\"delaymin\":~d,\"enabled\":true},~%"
    cronline
    name
    delaymin))

