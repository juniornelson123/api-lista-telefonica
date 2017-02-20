debug:
	@docker attach `docker-compose ps -q web-api`

run:
	@docker-compose up

data:
	@bundle exec rake db:migrate

test:
	@docker-compose run --rm web-api bundle exec rspec

install:
	@bundle install --jobs=50

update:
	@bundle update --jobs=50

create:
	@docker-compose run --rm web-api bundle exec rake db:create

migrate:
	@docker-compose run --rm web-api rake db:migrate

seed:
	@docker-compose run --rm web-api rake db:seed

setup:
	@docker-compose run --rm web-api rake db:migrate db:seed

console:
	@docker-compose run --rm web-api rails console

reset:
	@docker-compose run --rm web-api rake db:drop db:create db:migrate db:seed

clear:
	@docker-compose run --rm web-api rake db:reset


rest:
	@docker-compose run --rm web-api rake rest:get_data

lines:
	@docker-compose run --rm web-api rake rest:get_lines

stops:
	@docker-compose run --rm web-api rake rest:get_stops

rebuild:
	@docker-compose build --force-rm --no-cache web-api

pry:
	@docker-compose run --service-ports web-api

ngrok:
	@ngrok http -hostname=development.dinner.com.br 3000

rspec:
	@docker-compose run --rm -e "RAILS_ENV=test" web-api rspec $(spec)
