# frozen_string_literal: true

module UikitAdminRails
  module Navmenu
    class AddGenerator < ::Rails::Generators::Base #:nodoc:
      argument :models, type: :array, required: true
      class_option :namespace, type: :string, aliases: '-n'
      class_option :template, type: :string, aliases: '-t'

      desc <<-LONGDESC
        USAGE:
          rails generator navmenu:add [MODELS] [--options]

        OPTIONS:
          -n [--namespace]  # ネームスペースを付与します
          -t [--template]   # テンプレートファイルを指定します
      LONGDESC

      def self.source_root(_path = nil)
        @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
      end

      def create_items
        raise StandardError unless File.directory?(shared_dir)
        # puts 'generate navmenu item'
        models&.each do |item|
          next if item.blank?
          @item = item
          template_inject_to_file(item, options[:namespace])
        end
      rescue StandardError => e
        Rails.logger.debug e.message
        # Rails.logger.debug "namespace #{options[:namespace]} doesn't exist"
      end

      private

      def template_inject_to_file(item, namespace)
        template template_file, "#{shared_dir}/_nav_item_#{item.downcase.pluralize}.html.erb"
        nav_menu_path = [shared_dir, '_nav_menu.html.erb'].compact.join('/')
        nav_item = ['shared', namespace, "nav_item_#{item.downcase.pluralize}"].compact.join('/')

        inject_into_file nav_menu_path, after: "<!-- nav_manu items -->\n" do
          "<%= render '#{nav_item}' %>"
        end
      end

      def shared_dir
        base_dir = Rails.root.join('app', 'views', 'shared')
        File.join(*[base_dir, options[:namespace]].compact)
      end

      def template_file
        options[:template] ? File.expand_path(options[:template]) : '_nav_item.tmpl.erb'
      end
    end
  end
end
