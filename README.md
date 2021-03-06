[![CircleCI](https://circleci.com/gh/grrrisu/zero-rails.svg?style=svg)](https://circleci.com/gh/grrrisu/zero-rails)
[![Test Coverage](https://api.codeclimate.com/v1/badges/edb44b90aed4229d22f4/test_coverage)](https://codeclimate.com/github/grrrisu/zero-rails/test_coverage)

## Includes

- Heroku ready
- CircleCI ready
- Bugsnag ready
- codeclimate ready
- javascript and css dependencies via webpack
- ActiveStorage setup
- ActionCable via webpack
- [Bootstrap](https://getbootstrap.com/)
- SimpleForm
- Authentication via Devise
- Authorization via Pundit
- Decorators via Draper
- React (only)

## Development

`rails db:fixtures:load`

`yarn start`

`rails server`

## Clone

clone project and adapt the following files:

in circleci/config.yml

`POSTGRES_DB: zero-rails_test`

`working_directory: ~/zero-rails`

in config/application.rb

`module ZeroRails`

and `config/database.yml`

### MasterKey

remove `config/credentials.yml.enc`

create a new one, a new `master.key` will be created as well

`EDITOR=vim rails credentials:edit`

adapt the file using the `config/credentials_example.yml`

## Deploy

Add environment variable `RAILS_MASTER_KEY`

### Heroku using Github

see `app.json`

### Heroku Git

`git remote add heroku https://git.heroku.com/zero-rails.git`

`git push heroku master`

`heroku run rake db:migrate`

## Production

Heroku

https://zero-rails.herokuapp.com/
