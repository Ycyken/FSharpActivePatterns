.PHONY: repl tests test fmt lint celan deps

all:
	dune build

repl:
	dune build ./REPL.exe && rlwrap _build/default/REPL.exe

tests: test
test:
	dune runtest

celan: clean
clean:
	@$(RM) -r _build _coverage

fmt:
	dune build @fmt --auto-promote

lint:
	dune build @lint --force

release:
	dune build --profile=release
	dune runtest --profile=release

install:
	dune b @install --profile=release
	dune install

ODIG_SWITCHES = --odoc-theme=odig.gruvbox.light
ODIG_SWITCHES += --no-tag-index
ODIG_SWITCHES += --no-pkg-deps
odig:
	odig odoc $(ODIG_SWITCHES) Lambda

TEST_COV_D = /tmp/cov
COVERAGE_OPTS = --coverage-path $(TEST_COV_D) --expect lib/ --expect tests/

.PHONY: test_coverage coverage
test_coverage: coverage
coverage:
	$(RM) -r $(TEST_COV_D)
	mkdir -p $(TEST_COV_D)
	BISECT_FILE=$(TEST_COV_D)/langauge dune runtest --no-print-directory \
          --instrument-with bisect_ppx --force
	bisect-ppx-report html $(COVERAGE_OPTS)
	bisect-ppx-report summary $(COVERAGE_OPTS)
	@echo "Use 'xdg-open _coverage/index.html' to see coverage report"

DEPS = ocamlformat.0.26.2 ocaml-lsp-server.1.18.0 dune.3.16.0 odig
deps:
	opam install --yes $(DEPS)
	opam install --yes . --deps-only
