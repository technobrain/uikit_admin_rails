module UikitView
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_initializer_file
      copy_file '../initializers/templates/uikit_view.rb', 'config/initializers/uikit_view.rb'
    end
  end
end
