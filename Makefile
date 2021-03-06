
build: components index.js
	@component build --dev

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js

watch:
	@rewatch *.js *.html -c "make build"

.PHONY: clean
