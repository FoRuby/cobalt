up: ## Run container
	docker-compose up

build: ## Build docker image
	docker-compose build

start: up.silent bind ## Up container in silent mode and run bash

up.silent: ## Up container in silent mode
	docker-compose up -d

down: ## Down container
	docker-compose down

bind: ## Run bash console
	docker-compose exec backend bash

logs: ## Attach to running container
	docker-compose logs -f -t

# aliases
bc: bind # Run bash console

bash: bind # Run bash console
