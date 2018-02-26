# frozen_string_literal: true

module UikitAdminRails
  class CopyGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_templates
      puts 'copy templates'

      source = File.expand_path('../templates', __FILE__)
      dest = Rails.root.join('lib', 'templates')
      directory source, dest
    end
  end
end
