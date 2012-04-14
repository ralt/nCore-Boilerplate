SOURCE_DIRECTORY=./src/modules
DEST_DIRECTORY=./lib
DEST_FILE=/bundle.js

test: 
	@NODE_ENV=test ./node_modules/.bin/mocha \
		--ui tdd \
		--bail \
		--reporter spec

test-cov: lib-cov
	@NCORE_COV=1 $(MAKE) test REPORTER=html-cov > coverage.html

lib-cov:
	@jscoverage lib lib-cov

build:
	node ./build.js

start:
	supervisor ./index.js

ncore:
	./node_modules/.bin/ncore -o $(DEST_DIRECTORY)$(DEST_FILE) $(SOURCE_DIRECTORY)

.PHONY: test test-cov
