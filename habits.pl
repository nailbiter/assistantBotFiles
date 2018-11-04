#makehabits "08:00", "10:00", 2, "read main 1 1page", 1080, category => "reading";
#makehabits "08:00", "10:00", 1, "read main 2 1page", 1080, category=> "reading";
makehabits "08:00", "14:00", 3, "do main task", 1080, category=>"tasks", onFailed=>"move";

makeHabit "0 10 * * *", "math reading", 1080, items=>["main1 1 page","main1 1 page","main2 1 page",];
makeHabit "0 11 * * *", "talk to someone in person",  1080,  category=>"social", onFailed=>"remove";
makeHabit "0 10 * * *", "8 random test", 1080, category=> "german" ;
makeHabit "0 10 * * *", "einsoch6 SET", 1080, category=> "german", info=> "http://www.dw.com/de/deutsch-lernen/das-bandtagebuch-1-lass-uns-reden/s-32658" ;
makeHabit "30 14 * * fri", "mom talk", 1080, category=> "social" ;
makeHabit "0 22 * * fri", "granny talk", 1080, category=> "social" ;
makeHabit "30 23 * * sat", "masha report", 1080, category=> "social" ;
makeHabit "30 23 * * mon", "masha deadline", 1080, category=> "social" ;
#makeHabit "0 15 * * *", "pevzner 1h", 1080, onFailed=> "move" ;
makeHabit "0 15 * * *", "uncle vanya project", 1080, onFailed=> "move" ;
makeHabit "0 16 * * Sat", "dad english", 1080  ;
makeHabit "30 23 * * *", "mental exercise", 1080  ;
makeHabit "0 8 * * mon,tue", "sprint", 1380, category=> "sport" ;
makeHabit "0 8 * * mon", "long walk", 1380, category=> "sport" ;
makeHabit "0 7 * * *", "pullups 10:1", 1080, category=> "sport" ;
makeHabit "2 7 * * *", "pullups 10:2", 1080, category=> "sport" ;
makeHabit "4 7 * * *", "pullups 10:3", 1080, category=> "sport" ;
makeHabit "6 7 * * *", "pullups 10:4", 1080, category=> "sport" ;
makeHabit "0 19 * * fri", "clean ears", 1380 ;
makeHabit "0 13 * * *", "elsa", 1380 ;
makeHabit "0 12 1 * *", "back-up K emails", 1380 ;
makeHabit "0 10 * * *", "backup baito DB twice", 1380 ;
makeHabit "0 7 * * *", "morning note habit", 300 ,info=>"https://docs.google.com/document/d/1Q4wvok8I1AAc0Jtv6gU3d-MJK69uvsqCeLPbBvLiCTg/edit#";
makeHabit "0 7 * * *", "face cream, wash head", 300 ;
makeHabit "0 7 * * *", "apple", 300 ;
makeHabit "0 7 * * *", "do 3*9_LegParBar/45_abs", 120, category=> "sport" ;
makeHabit "0 7 * * *", "do pushups", 1080, category=> "sport" ;
makeHabit "0 10 * * tue", "water tree", 60 ;
makeHabit "0 23 * * *", "sleep", 75, onFailed=> "remove" ;
makeHabit "0 11 * * mon", "sync latex, texmacs and mac's mongodb", 1380 ;
makeHabit "0 8 * * *", "read math 2 hours", 960, enabled=> 0 ;
makeHabit "15 22 * * Fri", "confucius 1h: 1", 960 ;
makeHabit "30 22 * * Fri", "confucius 1h: 2", 960 ;
makeHabit "00 22 13 * *", "inflate bike", 960 , category=>"atschool";
makeHabit "00 10 * * mon", "check week stat (money, time)", 960 , category=>"logistics";
makeHabit "0 8 27 * *", "odaiba payment", 960, info=>"amount = 35119";
makeHabit "*/2 * * * *", "test", 1, enabled=> 0 ;
