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
|user_id|integer|null: false, foreign_key: true|
|movie_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :movie

## movieテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|image|string||
### Association

## テーブル
|Column|Type|Options|
|------|----|-------|

### Association

## テーブル
|Column|Type|Options|
|------|----|-------|

### Association

## テーブル
|Column|Type|Options|
|------|----|-------|

### Association
