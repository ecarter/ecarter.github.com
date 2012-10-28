
dev:
	./node_modules/.bin/serve .

build:
	./node_modules/.bin/jade index.jade
	./node_modules/.bin/stylus style.styl

PHONY: dev build
