require 'test_helper'

class UikitAdminRails::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, UikitAdminRails
  end

  test "config_admin_controller_namespace_default_value" do
    assert_equal UikitAdminRails.configuration.admin_controller_namespace, :admin
  end
end
