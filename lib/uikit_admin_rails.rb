# frozen_string_literal: true

require 'uikit_admin_rails/engine'
require 'uikit_admin_rails/version'
require 'uikit_admin_rails/configuration'

module UikitAdminRails #:nodoc:
  # Your code goes here...

  class << self
    delegate(*Configuration::OPTIONS, to: :configuration)

    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield configuration
    end
  end
end
