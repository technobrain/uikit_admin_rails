require 'test_helper'
require 'generators/uikit_admin/install/install_generator'

class InstallGeneratorTest < ActiveSupport::TestCase
  def test_install_generator
    # assert_output(/create initializers\/rails_admin.rb/m) do
    assert_output(/create initializers\/uikit_admin.rb/m) do
      UikitAdmin::InstallGenerator.start
    end
    dest = Rails.root.join('config', 'initializers', 'uikit_admin.rb')
    assert File.exists? dest
    contents = File.read "test/test_helper.rb"
    assert_match(/Rails.application.config.generators do |g|/m, contents)
  end
end
