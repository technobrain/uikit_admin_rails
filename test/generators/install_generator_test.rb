# frozen_string_literal: true

require 'test_helper'
require 'generators/uikit_admin_rails/install/install_generator'

class InstallGeneratorTest < ActiveSupport::TestCase
  def test_install_generator

    assert_output(/create initializers\/uikit_admin.rb/m) do
      UikitAdminRails::InstallGenerator.start
    end
    initializer_file = Rails.root.join('config', 'initializers', 'uikit_admin.rb')
    assert File.exists? initializer_file

    theme_file = Rails.root.join('app', 'assets', 'stylesheets', 'admin-theme.scss')
    assert File.exists? theme_file

    contents = File.read "test/test_helper.rb"

    assert_match(/Rails.application.config.generators do |g|/m, contents)
    assert_match(/UikitAdminRails.configure do |config|/m, contents)
  end
end
