require_relative "boot"

require "rails/all"

#Require
Bundler.require(*Rails.groups)

module TwisterV2
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # URL
    default_url_options[:host] = ENV['HOST_URL']

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.time_zone = 'Brasilia'
    config.i18n.default_locale = 'pt-BR'
    config.active_record.default_timezone = :local
    config.i18n.available_locales = ['pt-BR']


    #Cache
    config.cache_store = :redis_cache_store, { url: ENV['REDIS_URL'], expires_in: 1.hour }
    config.action_controller.perform_caching = true


    #E-Mail
    config.action_mailer.delivery_method = :smtp
    host = default_url_options[:host]
    config.action_mailer.default_url_options = { host: host }

    # SMTP settings
    config.action_mailer.smtp_settings = {
      :address              => "smtp.gmail.com",
      :port                 => 587,
      :user_name            => "softwaretwister@gmail.com",
      :password             => ENV['EMAIL_PASSWORD'],
      :authentication       => "plain",
      :enable_starttls_auto => true
    }

    #Active View
    config.action_view.form_with_generates_remote_forms = false

    #Active Storage
    config.active_storage.service = :amazon
  end
end
