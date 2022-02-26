.PHONY: help
help: ## help for telmei-go
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

# run
.PHONY: run
run: ## bash container/run.sh
	@bash container/run.sh

# rmi
.PHONY: rmi
rmi: ## bash container/rmi.sh
	@bash container/rmi.sh

# build
.PHONY: build
build: ## bash container/build.sh
	@bash container/build.sh
