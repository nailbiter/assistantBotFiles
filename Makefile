.PHONY: all
.INTERMEDIATE : merged.scm

include Makefile.local

all: habits.json
	runBot.sh

merged.scm : habits.scm macro.scm
	cat macro.scm > merged.scm
	cat habits.scm >> merged.scm
habits.json : merged.scm
	$(SCHEME) merged.scm |grep -v ';' > $@
	rm -rf merged.scm
