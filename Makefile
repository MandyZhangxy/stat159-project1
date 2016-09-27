.PHONY: all

MD = paper/sections/*.md
images = images/*.png

all: paper/paper.md paper/paper.html

paper/paper.md: $(MD)
	cat $(MD) > paper/paper.md

paper/paper.html: paper/paper.md $(images)
	pandoc -s paper/paper.md -o paper/paper.html

clean: 
	rm paper/paper.md paper/paper.html
