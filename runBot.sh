#!/bin/sh

git commit --allow-empty -a -m "commit" && java -jar assistantbot.jar 2>&1 | tee ~/tmp/out.txt
#> 
