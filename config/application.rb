require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MovieReview
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.test_framework false
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end


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

## テーブル
|Column|Type|Options|
|------|----|-------|

### Association
