# say "Appending Uikit setup code to #{UikitAdminRails.config.theme_entry_path}/admin-theme.scss"
# append_to_file "#{UikitAdminRails.config.theme_entry_path}/admin-theme.scss" do
#   "\n" + open("#{__dir__}/examples/admin-theme.scss").read
# end

# say "Appending Uikit setup code to #{UikitAdminRails.config.theme_entry_path}/admin-theme.scss"
# source = File.expand_path('examples/admin-theme.scss', __dir__)
# dest = "#{UikitAdminRails.config.theme_entry_path}/admin-theme.scss"
# template source, dest

# say "Installing all Uikit dependencies"

run "yarn add uikit"
