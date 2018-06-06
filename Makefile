.PHONY: all save
.INTERMEDIATE : merged.scm

SCHEMEFLAGS=--quiet
SCHEME=scheme $(SCHEMEFLAGS) < 

all: habits.json tests.json
	runBot.sh

merged.scm : habits.scm macro.scm
	cat macro.scm > merged.scm
	cat habits.scm >> merged.scm
habits.json : merged.scm
	$(SCHEME) merged.scm |grep -v ';' > $@
	rm -rf merged.scm
tests.json : tests.1.json tests.2.json tests.3.json
	cat tests.1.json > $@
	cat tests.2.json >> $@
	cat tests.3.json >> $@
save:
	mv assistantbot.jar assistantbot.1.jar
