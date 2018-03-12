# frozen_string_literal: true

require 'test_helper'
require 'generators/uikit_admin_rails/navmenu/add/add_generator'
require 'generators/uikit_admin_rails/navmenu/init/init_generator'

module Navmenu
  class InitAndAddGeneratorTest < ActiveSupport::TestCase
    def setup
      @namespace = 'admin'
      @shard_dir = Rails.root.join('app', 'views', 'shared', @namespace)
      FileUtils.rm_rf("#{@shard_dir}/.", secure: true)
    end

    def test_navmenu_add_generator_genarate_navmenu_item
      # assert_output(
      #   /(create|identical|conflict)  test\/dummy\/app\/views\/shared\/admin\/_nav_menu.html.erb/m
      # ) do
      UikitAdminRails::Navmenu::InitGenerator.start([@namespace])
      # end
      assert File.exist? "#{@shard_dir}/_nav_menu.html.erb"

      # assert_output(/generate navmenu item/m) do
      UikitAdminRails::Navmenu::AddGenerator.start(['comments', 'article', "-n=#{@namespace}"])
      # end
      assert File.exist? "#{@shard_dir}/_nav_item_comments.html.erb"
      assert File.exist? "#{@shard_dir}/_nav_item_articles.html.erb"
    end
  end
end
