

MAIN = thesis.tex
SRCDIR = src

create:
	cd $(SRCDIR) && latexmk $(MAIN)

clean:
	cd $(SRCDIR) && latexmk -C $(MAIN)


.PHONY: create clean


install:
	npm install

lint:
	npm run lint

lint-fix:
	npm run lint:fix

quickfix:
	npm run quickfix
