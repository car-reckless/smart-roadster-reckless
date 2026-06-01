build:
	uv run jupyter-book build .

view: build
	open _build/html/index.html

web:
	open https://car-reckless.github.io/smart-roadster-reckless/

deploy: build
	git ci -a -m "Publishing to gh-pages"
	git push
	uv run ghp-import -n -p -f _build/html/

clean:
	rm -rf _build/
