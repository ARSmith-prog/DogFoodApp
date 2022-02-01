add-migration: # new db migration
	bundle exec rails g migration

add-model: # new db model
	bundle exec rails g model

db-create: # new db
	bundle exec rails db:setup

lint-ruby-setup: # lint ruby
	bundle exec rubocop --auto-gen-config

lint-ruby: # lint ruby
	bundle exec rubocop -a

lint-js: # lint js
	npm run lint
	npm run format

lint-security: # security scanner
	brakeman

run-console:
	bundle exec rails console

run-generate:
	bundle exec rails generate

run-rails: # start server
	bundle exec puma -t 1:1 -b tcp://0.0.0.0:3000

run-sidekiq: # start sidekiq
	bundle exec sidekiq -q critical, 9 -q default, 5 -q low,1

install: # install project
	brew install rbenv
	rbenv install 2.5.7
	gem install bundler
	bundle install
	brew install yarn
