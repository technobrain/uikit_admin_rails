# frozen_string_literal: true

module UikitAdminRails
  class InstallUikitGenerator < Rails::Generators::Base
    def install_uikit
      say "Installing UIkit"
      system "rake uikit_admin_rails:install:uikit"

      say "UikitAdminRails now supports UIkit 🎉", :green
    end
  end
end
