.PHONY: build

build:
	-rm -r build/
	mkdir build
	cp index.html build/index.html
	cp -R fonts build/
	zopfli --i1000 build/index.html
	brotli -Z build/index.html
