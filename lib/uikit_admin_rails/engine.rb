# frozen_string_literal: true

module UikitAdminRails
  class Engine < ::Rails::Engine #:nodoc:
    config.to_prepare do
      Rails.application.config.assets.paths << File.expand_path('../uikit/dist/js', __dir__)
      Rails.application.config.assets.paths << File.expand_path('../uikit/dist/css', __dir__)
      Rails.application.config.generators.templates.unshift(
        File.expand_path('../generators/uikit_admin_rails/copy/templates', __dir__)
      )
    end
  end
end
