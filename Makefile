all: habits.json

SCHEME=scheme --quiet < 

habits.json : habits.scm
	$(SCHEME) habits.scm |grep -v ';' > $@
