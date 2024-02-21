.PHONY: build

setup:
	pipenv install

build:
	$(MAKE) clean
	pipenv run ./scripts/build.sh

clean:
	rm -rf build/compiled_cairo_files
	mkdir -p build
	mkdir build/compiled_cairo_files


test:
	protostar test-cairo0
