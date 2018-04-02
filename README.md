[![CircleCI](https://circleci.com/gh/grrrisu/zero-rails.svg?style=svg)](https://circleci.com/gh/grrrisu/zero-rails)
[![Dependency Status](https://gemnasium.com/badges/github.com/grrrisu/zero-rails.svg)](https://gemnasium.com/github.com/grrrisu/zero-rails)
[![Maintainability](https://api.codeclimate.com/v1/badges/edb44b90aed4229d22f4/maintainability)](https://codeclimate.com/github/grrrisu/zero-rails/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/edb44b90aed4229d22f4/test_coverage)](https://codeclimate.com/github/grrrisu/zero-rails/test_coverage)

## Includes

* Heroku ready
* CircleCI ready
* Bugsnag ready
* codeclimate ready
* javascript and css dependencies via webpack
* [Bootstrap](https://getbootstrap.com/)
* SimpleForm
* Authentication via Devise
* React (only)

## Development

`rails db:fixtures:load`

`yarn start`

`rails server`

## Clone

clone project and adapt the following files:

in circleci/config.yml

`POSTGRES_DB: zero-rails_test`

in app/application.rb

`module ZeroRails`

and `config/database.yml`

## Deploy

`git remote add heroku https://git.heroku.com/zero-rails.git`

`git push heroku master`

## Production

Heroku

https://zero-rails.herokuapp.com/
