module UikitAdminRails
  class Configuration
    # Configurable option
    OPTIONS = %i(
      admin_controller_namespace
    ).freeze

    attr_accessor(*OPTIONS)
  end
end
