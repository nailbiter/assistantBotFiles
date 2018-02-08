;main body
(format #t "{\"obj\":[~%")
(makehabits "11:00" "21:00" 10 "pluralization flashcards" 1080 "https://tiny.cards/decks/35dd6998-5f2b-457c-a20c-84c5b5f09e0b")
;(makehabits "11:00" "21:00" 6 "pronouns flashcards" 1080 "https://tiny.cards/decks/35dd6998-5f2b-457c-a20c-84c5b5f09e0b")
(makehabits "11:00" "21:00" 6 "genders flashcards" 1080 "https://tiny.cards/decks/4f3bab7e-fee5-4bf1-87d3-f00bd4f44751")
(makehabits "11:00" "19:00" 3 "make 5 flashcards" 1080 "https://tiny.cards/decks/2765cc46-7f31-4d50-b6b1-01f3197ad693")
(makehabits "11:00" "19:00" 4 "practice 5 flashcards" 1080 "https://tiny.cards/decks/0d152f36-f725-44cd-a573-67d991d78b25")
(makehabits "11:00" "21:00" 1 "german workbook 1 unit and FCsentences" 1080 "" #f)
(makehabits "10:00" "22:00" 14 "jojo exercise" 1080 "")
(makehabits "10:00" "22:00" 4 "test paradigm" 1080 "")

(makehabit "0 19 * * tue" "clean ears" 1380)
(makehabit "0 7 * * *" "face cream" 300)
(makehabit "0 7 * * *" "apple" 300)
(makehabit "0 7 * * *" "do abs" 120)
(makehabit "0 10 * * tue" "water tree" 60)
(makehabit "0 23 * * *" "sleep" 55)
(makehabit "0 11 * * mon" "sync latex and texmacs" 1380)
(makehabit "0 8 */2 * mon" "wash head" 1380)
(makehabit "0 8 * * *" "read math 2 hours" 960 #f)

(format #t "{\"cronline\":\"0 7 * * *\",\"name\":\"listen to jojo: to html\",\"count\":2,\"delaymin\":120,\"enabled\":true,\"category\":\"german\"},~%")
(format #t"{\"cronline\":\"*/2 * * * *\",\"name\":\"test\",\"count\":1,\"delaymin\":1,\"enabled\":false}]}")
