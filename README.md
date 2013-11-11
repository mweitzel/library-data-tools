library-data-tools
==================

Data visualisation tool for libraries. Make more informed decisions through insight into your current holds.

Designed as an internally hosted tool.

* System dependencies: ruby 2.0, Postgres

* `bundle install` to resolve project dependencies

* Database creation `$ rake db:create`

* Database initialization `$ rake db:create && rake db:migrate`

* Download a seed file eg: https://s3.amazonaws.com/slush_bucket/aadl_holds_tail.csv (more in db/seeds/notes.txt)

* Database seeding: download a seed file () `$ rake db:seed ./path/to/seed_data.csv`

* `rails s` to run
