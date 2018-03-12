# frozen_string_literal: true

require 'test_helper'
require 'generators/uikit_admin_rails/admin_controller/admin_controller_generator'

class AdminControllerGeneratorTest < ActiveSupport::TestCase
  def test_admin_cotroller_generator_creates_layout
    UikitAdminRails::AdminControllerGenerator.start

    dest_views_shared = Rails.root.join('app', 'views', 'shared')
    assert Dir.exist? dest_views_shared
  end
end
