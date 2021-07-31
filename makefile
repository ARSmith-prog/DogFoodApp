add-migration:
  bundle exec rails g migration

add-model:
  bundle exec rails g model

db-create:
  bundle exec rake db:create

db-migrate:
	bundle exec rake db:migrate

db-rollback:
	bundle exec rake db:rollback
  
db-create:
  bundle e rails db:setup
  
lint-ruby-setup:
	bundle exec rubocop --auto-gen-config

lint-ruby:
	bundle exec rubocop -a
  
lint-js:
	npm run lint
  npm run format

lint-security:
	brakeman

run-console:
	bundle exec rails console

run-generate:
	bundle exec rails generate

run-rails:
	bundle exec puma -t 1:1 -b tcp://0.0.0.0:3000

run-sidekiq:
	bundle exec sidekiq -q critical,9 -q default,5 -q low,1
 
install:
  brew install rbenv
  rbenv install 2.5.7
  gem install bundler
  bundle install
  brew install yarn
