help: ## Show this help message
	@echo 'usage: make [target]'
	@echo
	@echo 'targets:'
	@egrep '^(.+)\:\ ##\ (.+)' ${MAKEFILE_LIST} | column -t -c 2 -s ':#'

docker/build: ## Build docker image
	docker build -t deno_test .

docker/run: ## Run docker container
	docker run -p 1993:1993 deno_test
