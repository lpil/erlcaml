help:
	@cat $(MAKEFILE_LIST) | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


MLS := $(wildcard ml/*.ml)
ML_LAMBDAS := $(MLS:.ml=.lambda)

.PHONY: dump-ocaml-lambda
dump-ocaml-lambda: $(ML_LAMBDAS) ## Dump ml/*.ml files to .lambda IR files
	echo 1

$(ML_LAMBDAS): force
	ocamlc -c -I ml -dlambda $(subst .lambda,.ml,$@) 2> $@

force:
