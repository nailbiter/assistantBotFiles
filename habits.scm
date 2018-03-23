;main body
(format #t "~%{\"obj\":[~%")

(makehabits "10:00" "22:00" 10 "pluralization flashcards" 1080 '(info "https://tiny.cards/decks/ed6eddd0-274f-4ac4-a96a-70f3f0e08726") '(category "german"))
;(makehabits "11:00" "21:00" 6 "pronouns flashcards" 1080 "https://tiny.cards/decks/35dd6998-5f2b-457c-a20c-84c5b5f09e0b" '(category "german"))
(makehabits "10:00" "22:00" 4 "genders flashcards" 1080 '(info "https://tiny.cards/decks/4f3bab7e-fee5-4bf1-87d3-f00bd4f44751") '(category "german"))
(makehabits "10:00" "22:00" 8 "5 flashcards do/prac" 1080 '(info "https://tiny.cards/decks/6fdRSrsB/wort-fur-wort-ix") '(category "german"))
(makehabits "10:00" "22:00" 4 "masha 5 cards" 1080)
(makehabits "10:00" "22:00" 1 "german workbook 1 unit and FCsentences" 1080 '(category "german"))
;(makehabits "10:00" "22:00" 10 "jojo exercise" 1080 "")
(makehabits "10:00" "22:00" 6 "test paradigm" 1080 '(category "german"))
(makehabits "10:00" "22:00" (* 2 (+ 4 5)) "jojo" 1080 '(category "german"))
(flushhabits)

(makehabit "0 19 * * tue" "clean ears" 1380)
(makehabit "0 13 * * *" "elsa" 1380)
(makehabit "0 7 * * *" "face cream" 300)
(makehabit "0 7 * * *" "apple" 300)
(makehabit "0 7 * * *" "do abs" 120)
(makehabit "0 10 * * tue" "water tree" 60)
(makehabit "0 23 * * *" "sleep" 55)
(makehabit "0 11 * * mon" "sync latex and texmacs" 1380)
(makehabit "0 8 */2 * mon" "wash head" 1380)
(makehabit "0 8 * * *" "read math 2 hours" 960 '(enabled #f))

;(format #t "{\"cronline\":\"0 7 * * *\",\"name\":\"listen to jojo: to html\",\"count\":2,\"delaymin\":120,\"enabled\":true,\"category\":\"german\"},~%")
(format #t"{\"cronline\":\"*/2 * * * *\",\"name\":\"test\",\"count\":1,\"delaymin\":1,\"enabled\":false}]}")
