# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'uikit_admin_rails/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'uikit_admin_rails'
  s.version     = UikitAdminRails::VERSION
  s.authors     = ['KOBAYASHI-Toshinobu']
  s.email       = ['toshinobu_kobayashi@tbn.co.jp']
  s.homepage    = ''
  s.summary     = ': Summary of UikitAdminRails.'
  s.description = ': Description of UikitAdminRails.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '>= 5.1.5'

  s.add_development_dependency "sass-rails"
  s.add_development_dependency "minitest-rails"
  s.add_development_dependency "sqlite3"

  # #######################################################
  # # Git submodule
  # #######################################################
  # s.files = `git ls-files`.split("\n")
  #
  # # get an array of submodule dirs by executing 'pwd' inside each submodule
  # gem_dir = File.expand_path(File.dirname(__FILE__)) + "/"
  # `git submodule --quiet foreach pwd`.split($\).each do |submodule_path|
  #   Dir.chdir(submodule_path) do
  #     submodule_relative_path = submodule_path.sub gem_dir, ""
  #     # issue git ls-files in submodule's directory and
  #     # prepend the submodule path to create absolute file paths
  #     `git ls-files`.split($\).each do |filename|
  #       s.files << "#{submodule_relative_path}/#{filename}"
  #     end
  #   end
  # end
end
