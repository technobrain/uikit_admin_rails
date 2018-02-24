# frozen_string_literal: true

module UikitAdminRails
  class CopyGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_templates
      puts 'copy templates'

      dest = Rails.root.join('lib', 'templates')
      source = File.expand_path('../templates', __FILE__)
      directory source, dest
    end
  end
end
