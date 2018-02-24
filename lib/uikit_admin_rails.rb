module UikitAdminRails
  # Your code goes here...

  # class Application < Rails::Application
  #   # Rails.application.config.assets.paths << File::expand_path('../uikit', __FILE__)
  #   Rails.application.config.assets.paths << File::expand_path('../uikit/dist/js', __FILE__)
  #   Rails.application.config.assets.paths << File::expand_path('../uikit/dist/css', __FILE__)
  # end

  class Engine < ::Rails::Engine
    config.to_prepare do
      Rails.application.config.assets.paths << File::expand_path('../uikit/dist/js', __FILE__)
      Rails.application.config.assets.paths << File::expand_path('../uikit/dist/css', __FILE__)
    end
  end
end
