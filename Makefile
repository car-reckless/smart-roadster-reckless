build:
	poetry run jupyter-book build .

view: build
	open _build/html/index.html

publish: build
	git ci -a -m "Publishing to gh-pages"
	git push
	ghp-import -n -p -f _build/html/
