# frozen_string_literal: true

module UikitAdmin
  module Templates
    class CopyGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def copy_templates
        dest = Rails.root.join('lib', 'templates')
        source = File.expand_path('../templates', __FILE__)
        directory source, dest
      end
    end
  end
end
