# frozen_string_literal: true

module UikitAdminRails
  class Configuration #:nodoc:
    # Configurable option
    OPTIONS = %i[
      admin_controller_namespace
      theme_entry_path
    ].freeze

    attr_accessor(*OPTIONS)
  end
end
