.PHONY: build setup clean test

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
	cargo build --release --manifest-path=./scripts/bandersnatch_rust/Cargo.toml --quiet
	protostar test-cairo0
