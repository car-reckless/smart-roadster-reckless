build:
	myst build --html

view:
	kill $$(lsof -t -i:8000) || true
	cd _build/html && python -m  http.server 8000 &
	open http://localhost:8000

publish: build
	git ci -a -m "Publishing to gh-pages"
	git push
	ghp-import -n -p -f _build/html/

clean:
	kill $$(lsof -t -i:8000) || true
	rm -rf _build/
