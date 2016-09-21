all: paper.html

paper/paper.md: paper/sections/00-abstract.md paper/sections/01-introduction.md paper/sections/02-intermiediate.md paper/sections/03-conclusions.md
	cat sections/*.md > paper.md

paper/paper.html: paper.md
	pandoc -s paper.md -o paper.html

clean:
	rm -f paper.md paper.html

