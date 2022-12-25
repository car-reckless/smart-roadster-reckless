publish: build
	git ci -a -m "Publishing to gh-pages"
	git push
	ghp-import -n -p -f _build/html/

build:
	jupyter-book build .