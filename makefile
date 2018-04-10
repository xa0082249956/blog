FILES = ./archetypes ./content ./data ./i18n ./layouts ./static ./themes config.toml
HUGOBIN = ./bin/hugo
SFLAGS = "-D"

.PHONY: clean server pubgit

public: $(FILES)
	$(HUGOBIN)

pubgit: $(FILES)
	./build.sh
	$(HUGOBIN)

server:
	$(HUGOBIN) server $(SFLAGS)

clean:
	rm -r public
