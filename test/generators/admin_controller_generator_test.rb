require 'test_helper'
require 'generators/uikit_admin_rails/admin_controller/admin_controller_generator'

class AdminControllerGeneratorTest < ActiveSupport::TestCase
  def test_admin_cotroller_generator_creates_layout
    assert_output(/copy admin layout/m) do
      UikitAdminRails::AdminControllerGenerator.start
    end
    # dest = Rails.root.join('config', 'initializers', 'uikit_admin.rb')
    # assert File.exists? dest
    # contents = File.read "test/test_helper.rb"
    # assert_match(/Rails.application.config.generators do |g|/m, contents)
    # assert_match(/UikitAdminRails.configure do |config|/m, contents)

    dest_views_shared = Rails.root.join('app', 'views', 'shared')
    assert Dir.exist? dest_views_shared
  end
end
