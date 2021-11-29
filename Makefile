RAILS_ENV := $(or $(RAILS_ENV),development)

# ========================================
# Makes it possible to run "make aaa bbb" instead of "make aaa ARGS=bbb"
ARGS = $(filter-out $@,$(MAKECMDGOALS))
%:
	@:
# https://stackoverflow.com/a/47008498
# ========================================

-include ../cobalt/makefiles/*.mk
