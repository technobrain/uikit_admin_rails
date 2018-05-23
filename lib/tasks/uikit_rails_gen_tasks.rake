# frozen_string_literal: true
# desc "Explaining what the task does"
# task :uikit_admin_rails do
#   # Task goes here
# end

namespace :uikit_admin_rails do
  namespace :install do
    desc 'Install uikit'
    task :uikit do
      template = File.expand_path("../install/uikit.rb", __dir__)
      base_path =
        if Rails::VERSION::MAJOR >= 5
          "#{RbConfig.ruby} ./bin/rails app:template"
        else
          "#{RbConfig.ruby} ./bin/rake rails:template"
        end

      exec "#{base_path} LOCATION=#{template}"
    end
  end
end
