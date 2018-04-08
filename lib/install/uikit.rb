say "Appending Uikit setup code to #{UikitAdminRails.config.theme_entry_path}/admin-theme.scss"
append_to_file "#{UikitAdminRails.config.theme_entry_path}/admin-theme.scss" do
  "\n" + open("#{__dir__}/examples/admin-theme.scss").read
end

say "Installing all Uikit dependencies"
run "yarn add uikit"

say "UikitAdminRails now supports UIkit 🎉", :green
