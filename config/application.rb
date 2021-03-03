require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TwisterV2
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.

    # config.eager_load_paths << Rails.root.join("extras")

    config.time_zone = 'Brasilia'
    config.active_record.default_timezone = :local

    config.i18n.default_locale = 'pt-BR'
    config.i18n.available_locales = ['pt-BR']

    config.cache_store = :redis_cache_store, { url: ENV['REDIS_URL'], expires_in: 1.hour }
    config.action_controller.perform_caching = true
  end
end
