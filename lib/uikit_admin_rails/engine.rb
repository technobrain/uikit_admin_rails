module UikitAdminRails
  class Engine < ::Rails::Engine
    config.to_prepare do
      Rails.application.config.assets.paths << File::expand_path('../../uikit/dist/js', __FILE__)
      Rails.application.config.assets.paths << File::expand_path('../../uikit/dist/css', __FILE__)
    end
  end
end
