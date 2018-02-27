require 'test_helper'
require 'generators/uikit_admin_rails/navmenu/add/add_generator'

module Navmenu
  class AddGeneratorTest < ActiveSupport::TestCase
    def test_navmenu_add_generator_genarate_navmenu_item
      assert_output(/generate navmenu item/m) do
        UikitAdminRails::Navmenu::AddGenerator.start(['comments article', '-n admin'])
      end
    end
  end
end
