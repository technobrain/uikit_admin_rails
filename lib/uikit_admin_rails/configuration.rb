module UikitAdminRails
  class Configuration
    # Configurable option
    OPTIONS = %i(
      admin_controller_namespace
      theme_entry_path
    ).freeze

    attr_accessor(*OPTIONS)
  end
end
