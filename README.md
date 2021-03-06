# README

## Getting Started

**generate basic rails**

```
rails new .
bundle install
```

**gem install mysql2**

```
gem install mysql2
```

**set up database config**

`cp config/database.yml.example config/database.yml`

**generate default db schema**

`rake db:migrate`

it will update `db/schema.rb` file.

there are two new table in the database.
`ar_internal_metadata` and `schema_migrations`

```
ar_internal_metadata
- key
- value
- created_at
- updated_at

The data look like this format.
environment, development, 2016-07-30 14:26:36, 2016-07-30 14:26:36
```

```
schema_migrations
- version

The data look like this format.
20160730144441
```

**generate migration file**

`rails generate migration migration_script_file_name`

e.g.
`rails generate migration add_nickname`
it will generate a file look like `db/migrate/20160730144441_add_nickname.rb`

**rollback**

`rake db:rollback STEP=1`

or

`RAILS_ENV=production rake db:rollback STEP=1`

if you did add nickname column operation, then it will remove nickname column.

### reference
* [Migrations](http://guides.rubyonrails.org/v3.2/migrations.html)
* [active record migrations](http://edgeguides.rubyonrails.org/active_record_migrations.html)
* [Ruby on Rails 實戰聖經](https://ihower.tw/rails4/)
* [Active Record - 資料庫遷移](https://ihower.tw/rails4/migrations.html)




This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
