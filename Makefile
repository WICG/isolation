all: explainer.html

force:
	bikeshed -f spec ./explainer.src.html

explainer.html: explainer.src.html
	bikeshed -f spec ./explainer.src.html

publish:
	git push origin master master:gh-pages
