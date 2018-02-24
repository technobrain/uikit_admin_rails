# frozen_string_literal: true

module UikitAdmin
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_initializer_file
      puts 'create initializers/uikit_admin.rb'
      source = '../templates/uikit_admin.rb'
      dest = Rails.root.join('config', 'initializers', 'uikit_admin.rb')
      copy_file source, dest
    end
  end
end
