# frozen_string_literal: true

module UikitAdminRails
  class AdminControllerGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def initialize(*args)
      super(*args)
      @ns = UikitAdminRails.configuration.admin_controller_namespace
    end

    def copy_admin_layout
      puts 'copy admin layout'
      source = '../templates/layouts/admin.html.erb'
      dest = Rails.root.join('app', 'views', 'layouts', "#{@ns}.html.erb")
      copy_file source, dest
    end

    def copy_admin_base_index
      puts 'copy admin base index'
      source = '../templates/views/index.html.erb'
      dest = Rails.root.join('app', 'views', @ns.to_s, 'index.html.erb')
      @path = "#{@ns}/index"
      template source, dest
    end

    def generate_base_controller
      puts 'generate base_controller'
      source = '../templates/controllers/base_controller.rb'
      dest = Rails.root.join('app', 'controllers',  "#{@ns}", 'base_controller.rb')
      template source, dest
    end

    def add_admin_routes
      route "get 'admin' => 'admin/base#index'"
    end
  end
end
