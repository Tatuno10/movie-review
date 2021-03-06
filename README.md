# README

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

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :reviews

## reviewsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|review|text|null: false|
|point|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
|movie_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :movie

## movieテーブル
|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|title-ruby|text|null: false|
|image|string||
|synopsis|text|null: false|
### Association
- has_many :reviews
- has_many :movie_tags
- has_many :tags, through: :movie_tags

## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null:false|
### Association
- has_many :movie_tags
- has_many :movie, through: :movie_tags

## movie_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|movie_id|integer|null: false, foreign_key: true|
|tag_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :movie
- belongs_to :tag

