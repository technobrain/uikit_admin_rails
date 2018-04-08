# frozen_string_literal: true

module UikitAdminRails
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_initializer_file
      puts 'create initializers/uikit_admin.rb'
      source = '../templates/uikit_admin.rb'
      dest = Rails.root.join('config', 'initializers', 'uikit_admin.rb')
      copy_file source, dest
    end

    def uikit_install
      say "Appending Uikit setup code to #{UikitAdminRails.config.theme_entry_path}/admin-theme.scss"
      source = '../templates/admin-theme.scss'
      dest = "#{UikitAdminRails.config.theme_entry_path}/admin-theme.scss"
      copy_file source, dest

      # say "Installing all Stimulus dependencies"
      # execute_command "yarn add uikit"
      system "rake uikit_admin_rails:install:uikit"

      # say "UikitAdminRails now supports UIkit 🎉", :green
    end

  end
end
