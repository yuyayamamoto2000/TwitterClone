require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsTask1
  class Application < Rails::Application

    # config.load_defaults 5.2
    # config.time_zone = 'Tokyo' 
    # config.active_record.default_timezone = :local 

  end
end
