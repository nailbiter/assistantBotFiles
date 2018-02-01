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

;main body
(format #t "{\"obj\":[~%")
(makehabits "11:00" "21:00" 1 "pronouns flashcards" 1080)
(makehabits "11:00" "21:00" 1 "genders flashcards" 1080)
(makehabits "11:00" "19:00" 3 "make 5 flashcards" 1080)
(makehabits "11:00" "19:00" 4 "practice 5 flashcards" 1080)
(format #t "{\"cronline\":\"0 19 * * tue\",\"name\":\"clean ears\",\"count\":1,\"delaymin\":1380,\"enabled\":true},~%")
(format #t "{\"cronline\":\"0 7 * * *\",\"name\":\"face cream\",\"count\":1,\"delaymin\":300,\"enabled\":true},~%")
(format #t "{\"cronline\":\"0 7 * * *\",\"name\":\"apple\",\"count\":1,\"delaymin\":300,\"enabled\":true},~%")
(format #t "{\"cronline\":\"17 13 * * *\",\"name\":\"german workbook 1 unit\",\"count\":1,\"delaymin\":1080,\"enabled\":true},~%")
(format #t "{\"cronline\":\"0 7 * * *\",\"name\":\"do abs\",\"count\":1,\"delaymin\":120,\"enabled\":true},~%")
(format #t "{\"cronline\":\"0 10 * * tue\",\"name\":\"water tree\",\"count\":1,\"delaymin\":60,\"enabled\":true},~%")
(format #t "{\"cronline\":\"0 23 * * *\",\"name\":\"sleep\",\"count\":1,\"delaymin\":55,\"enabled\":true},~%")
(format #t "{\"cronline\":\"0 11 * * mon\",\"name\":\"sync latex and texmacs\",\"count\":1,\"delaymin\":1380,\"enabled\":true},~%")
(format #t "{\"cronline\":\"0 8 */2 * *\",\"name\":\"wash head\",\"count\":1,\"delaymin\":1380,\"enabled\":true},~%")
(format #t "{\"cronline\":\"0 8 * * *\",\"name\":\"read math 2 hours\",\"count\":1,\"delaymin\":960,\"enabled\":true},~%")
(format #t "{\"cronline\":\"0 7 * * *\",\"name\":\"listen to jojo: to html\",\"count\":2,\"delaymin\":120,\"enabled\":true},~%")
(format #t"{\"cronline\":\"*/2 * * * *\",\"name\":\"test\",\"count\":1,\"delaymin\":1,\"enabled\":false}]}")
