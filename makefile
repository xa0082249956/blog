FILES = ./archetypes ./content ./i18n ./layouts ./static ./themes config.toml
HUGOBIN = ./bin/hugo
SFLAGS = "-D"

.PHONY: clean server pubgit

# TODO: do not generate if everything is newest.
public: $(FILES)
	$(HUGOBIN)

pubgit:
	$(shell chmod +x ./build.sh)
	./build.sh
	$(HUGOBIN)

server:
	$(HUGOBIN) server $(SFLAGS)

clean:
	rm -r public
