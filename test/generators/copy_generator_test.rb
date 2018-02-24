require 'test_helper'
require 'generators/uikit_admin_rails/copy/copy_generator'

class CopyGeneratorTest < ActiveSupport::TestCase
  def test_copy_generator
    assert_output(/copy templates/m) do
      UikitAdminRails::CopyGenerator.start
    end
    dest_erb = Rails.root.join('lib', 'templates', 'erb')
    dest_rails = Rails.root.join('lib', 'templates', 'erb')
    assert Dir.exist? dest_erb
    assert Dir.exist? dest_rails
  end
end
