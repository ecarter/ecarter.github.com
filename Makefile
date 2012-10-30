MODULES=./node_modules
BIN=$(MODULES)/.bin
SERVE=$(BIN)/serve
JADE=$(BIN)/jade
STYLUS=$(BIN)/stylus

build:
	@$(JADE) -P index.jade
	@$(STYLUS) style.styl \
		--include $(MODULES) \
		--include-css

dev:
	@$(SERVE) --no-stylus \
		--favicon favicon.ico \
		.

.PHONY: build dev
