# frozen_string_literal: true

Rails.application.config.generators do |g|
  g.template_engine :erb
  g.orm :active_record
  g.assets false
  g.helper false
  # g.template_engine :all
  # g.fallbacks[:all] = :erb
  # g.test_framework :rspec,
  #                  controller_specs: false,
  #                  view_specs: false,
  #                  routing_specs: false,
  #                  helper_specs: false

  g.test_framework :minitest, spec: false, fixture: false
  g.system_tests nil
  g.fallbacks[:minitest] = :rspec
  # g.templates.unshift File::expand_path('../../../lib/templates', __FILE__)
end

UikitAdminRails.configure do |config|
  config.admin_controller_namespace = :admin
  config.theme_entry_path = Rails.root.join('app', 'assets', 'stylesheets')
end
