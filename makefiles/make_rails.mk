.PHONY: c
c: ## Run Rails console
	rails c

.PHONY: g
g: ## Rails generator
	rails g $(ARGS)

.PHONY: s
s: ## Run rails server
	bundle exec rails s -b 0.0.0.0

.PHONY: r.log
r.log: ## Rails server log
	tail -f log/development.log

.PHONY: t.log
t.log: ## Rails tests log
	tail -f log/test.log

.PHONY: upg
upg: ## Install gems and node modules.
	yarn install
	bundle

.PHONY: test
test: ## Run rspec.
	RAILS_ENV=test bundle exec rspec $(ARGS)

.PHONY: cache.clear
cache.clear: ## Clear rails cache
	bundle exec rails tmp:cache:clear

.PHONY: rswag
rswag: ## Creates swagger yaml files
	RAILS_ENV=test bundle exec rails rswag

# aliases

.PHONY: server
server: s ## Run rails server

.PHONY: rc
rs: c ## Run Rails console
