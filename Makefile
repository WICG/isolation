all: explainer.html index.html

force:
	bikeshed -f spec ./explainer.src.html

index.html: index.src.html
	bikeshed -f spec ./index.src.html

explainer.html: explainer.src.html
	bikeshed -f spec ./explainer.src.html

publish:
	git push origin master master:gh-pages
