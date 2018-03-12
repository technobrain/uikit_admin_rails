# frozen_string_literal: true

module UikitAdminRails
  class Configuration #:nodoc:
    # Configurable option
    OPTIONS = %i[
      admin_controller_namespace
    ].freeze

    attr_accessor(*OPTIONS)
  end
end
