all: paper/paper.html

paper/paper.html: paper/sections/00-abstract.md paper/sections/01-introduction.md paper/sections/02-discussion.md paper/sections/03-conclusions.md images/stat159-logo.png
	pandoc -s paper/sections/00-abstract.md paper/sections/01-introduction.md paper/sections/02-discussion.md paper/sections/03-conclusions.md -o paper/paper.html

