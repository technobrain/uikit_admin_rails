# frozen_string_literal: true

module UikitAdminRails
  module Navmenu
    class InitGenerator < ::Rails::Generators::Base #:nodoc:
      argument :namespace, type: :string, required: false
      class_option :template, type: :string, aliases: '-t'
      desc <<-LONGDESC
        USAGE:
          rails generator navmenu:init [NAMESPACE] [--options] : メニューを生成します．

        OPTIONS:
          -t [--template]     # テンプレートファイルを指定します
      LONGDESC

      def self.source_root(_path = nil)
        @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
      end

      def create_navmenu
        FileUtils.mkdir_p(shared_dir) unless File.directory?(shared_dir)
        copy_file template_file, "#{shared_dir}/_nav_menu.html.erb"
      end

      def create_navmenu_helper
        dest = Rails.root.join('app', 'helpers')
        copy_file 'helpers/navmenu_helper.rb', "#{dest}/navmenu_helper.rb"
      end

      private

      def shared_dir
        base_dir = Rails.root.join('app', 'views', 'shared')
        return base_dir unless namespace
        File.join(base_dir, namespace)
      end

      def template_file
        if options[:template]
          File.expand_path(options[:template])
        else
          'views/shared/_nav_menu.tmpl.erb'
        end
      end
    end
  end
end
