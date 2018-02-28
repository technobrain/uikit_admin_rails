module UikitAdminRails
  class Engine < ::Rails::Engine
    config.to_prepare do
      Rails.application.config.assets.paths << File::expand_path('../../uikit/dist/js', __FILE__)
      Rails.application.config.assets.paths << File::expand_path('../../uikit/dist/css', __FILE__)
      Rails.application.config.generators.templates.unshift File::expand_path('../../generators/uikit_admin_rails/copy/templates', __FILE__)
    end
  end
end
