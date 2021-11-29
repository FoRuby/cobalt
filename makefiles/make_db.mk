db.setup: db.create db.migrate db.seed ## Setup database.

db.migrate: ## Run migrates against development database.
	bundle exec rails db:migrate

.PHONY: migrate.test
db.migrate.test: ## Run migrates against test database.
	RAILS_ENV=test bundle exec rails db:migrate

db.create: ## Creates database.
	bundle exec rails db:create

db.reset: ## Reset database.
	bundle exec rails db:reset

db.drop: ## Reset database.
	bundle exec rails db:drop

db.rollback: ## Rollback last migration.
	bundle exec rails db:rollback

db.seed: ## Seeding database.
	bundle exec rails db:seed

DUMP_FILENAME := $(or $(DUMP_FILENAME),.devcontainer/db_dump.sql)
db.dump: ## Create database dump file.
	docker-compose run --rm backend pg_dump --file=$(DUMP_FILENAME) --username=postgres --host=postgres product_x_development

RESTORE_FILENAME := $(or $(RESTORE_FILENAME),.devcontainer/db_dump.sql)
db.restore: ## Seeding database with dump file.
	pg_restore --verbose --dbname=product_x_development --no-acl --no-owner --username=postgres --host postgres $(RESTORE_FILENAME)

# aliases

.PHONY: migrate
migrate: db.migrate ## Run migrates against development database.

.PHONY: migrate.test
migrate.test: db.migrate.test ## Run migrates against test database.
