require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module RailsChat
  class Application < Rails::Application
    config.generators.template_engine = :slim
    config.generators.stylesheets = false
    config.generators.javascripts = false
    config.generators.helper      = false
  end
end
