;main body
(define wordcardurl "https://tiny.cards/decks/6t38zYyg/wort-fur-wort-x")

(format #t "~%{\"obj\":[~%")

;(makehabits "08:00" "22:00" 4 "pullups 10" 1080 '(category "sport"))

(makehabits "08:00" "10:00" 2 "read main 1 1page" 1080 '(category "reading"))
(makehabits "08:00" "10:00" 1 "read main 2 1page" 1080 '(category "reading"))

(makehabits "10:00" "13:00" 7 "test paradigm" 1080 '(category "german"))
(makehabits "10:00" "13:00" 1 "einsoch6 makedocs" 1080 '(category "german") '(info "http://www.dw.com/de/deutsch-lernen/das-bandtagebuch-1-lass-uns-reden/s-32658"))
(makehabits "10:00" "13:00" 2 "einsoch6 translate" 1080 '(category "german") '(info "http://www.dw.com/de/deutsch-lernen/das-bandtagebuch-1-lass-uns-reden/s-32658"))
(makehabits "10:00" "13:00" 6 "einsoch6 ubung" 1080 '(category "german") '(info "http://www.dw.com/de/deutsch-lernen/das-bandtagebuch-1-lass-uns-reden/s-32658"))

;(makehabits "13:00" "16:00" 6 "pluralization flashcards" 1080 '(info "https://tiny.cards/decks/ed6eddd0-274f-4ac4-a96a-70f3f0e08726")'(category "german"))
;(makehabits "13:00" "16:00" 4 "germ sentences" 1080 '(info "https://tiny.cards/decks/5oPZSSoF/german-sentences")'(category "german"))

;(makehabits "16:00" "19:00" 4 "5 flashcards make" 1080  
;	    (list 'info wordcardurl)
;	    '(category "german"))
;(makehabits "16:00" "19:00" 4 "5 flashcards prac" 1080  
;	    (list 'info wordcardurl)
;	    '(category "german"))
;(makehabits "19:00" "22:00" 1 "german workbook 1 unit and FCsentences" 1080 '(category "german"))
(flushhabits)

(makehabit "0 7 * * *" "pullups 10:1" 1080 '(category "sport"))
(makehabit "2 7 * * *" "pullups 10:2" 1080 '(category "sport"))
(makehabit "4 7 * * *" "pullups 10:3" 1080 '(category "sport"))
(makehabit "6 7 * * *" "pullups 10:4" 1080 '(category "sport"))
(makehabit "0 19 * * tue" "clean ears" 1380)
(makehabit "0 13 * * *" "elsa" 1380)
(makehabit "0 7 * * *" "face cream" 300)
(makehabit "0 7 * * *" "apple" 300)
(makehabit "0 7 * * *" "do abs" 120)
(makehabit "0 10 * * tue" "water tree" 60)
;(makehabit "0 18 * * *" "protein" 1380)
(makehabit "0 23 * * *" "sleep" 55)
(makehabit "0 11 * * mon" "sync latex and texmacs" 1380)
(makehabit "0 8 */2 * *" "wash head" 1380)
(makehabit "0 8 * * *" "read math 2 hours" 960 '(enabled #f))

;(format #t "{\"cronline\":\"0 7 * * *\",\"name\":\"listen to jojo: to html\",\"count\":2,\"delaymin\":120,\"enabled\":true,\"category\":\"german\"},~%")
(format #t"{\"cronline\":\"*/2 * * * *\",\"name\":\"test\",\"count\":1,\"delaymin\":1,\"enabled\":false}]}")
