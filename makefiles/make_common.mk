.DEFAULT: help

.PHONY: help
help: ## Display this help message.
	@echo "Please use \`make <target>\` where <target> is one of:"
	@cat $(MAKEFILE_LIST) | grep -e "^[a-zA-Z_\-\.]*: *.*## *" | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
