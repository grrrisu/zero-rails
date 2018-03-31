## Includes

* Heroku ready
* CircleCI ready
* [Bootstrap](https://getbootstrap.com/) (only css)
* SimpleForm
* React (only)

## Development

[![CircleCI](https://circleci.com/gh/grrrisu/zero-rails.svg?style=svg)](https://circleci.com/gh/grrrisu/zero-rails)

`yarn start`

`rails s`

## Forking

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
