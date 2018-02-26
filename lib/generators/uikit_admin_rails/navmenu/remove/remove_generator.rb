module UikitAdminRails
  class RemoveGenerator < ::Rails::Generators::Base
    argument :models, type: :array, require: true
    class_option :namespace, type: :string, aliases: '-n'

    desc <<-DESC
    USAGE:
      rails generator navmenu:remove MODELS [--options]
    DESC
  end
end
