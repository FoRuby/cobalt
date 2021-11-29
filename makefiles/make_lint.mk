.PHONY: lint
lint: lint.rubocop lint.reek lint.brakeman ## Run all linters.

.PHONY: lint.rubocop
lint.rubocop: ##   [rubocop] linter.
	@echo '==> Running rubocop'
	bundle exec rubocop $(ARGS)

.PHONY: lint.rubocop!
lint.rubocop!: ##   [rubocop] linter with auto-correct.
	@echo '==> Running rubocop with auto-correct'
	bundle exec rubocop -a $(ARGS)

.PHONY: lint.reek
lint.reek: ##   [reek] linter.
	@echo '==> Running reek'
	bundle exec reek

.PHONY: lint.brakeman
lint.brakeman: ##   [brakeman] linter.
	@echo '==> Running brakeman'
	bundle exec brakeman --color
