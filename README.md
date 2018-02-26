# UikitAdminRails
Short description and motivation.

## Usage
How to use my plugin.

Run the following command to generate the initializer file.

```
$ rails generate uikit_admin_rails:install
```

Append following code to app/assets/application.js

```
...
//= require uikit.min.js
//= require uikit-icon.min.js
...
```

And append following code to app/assets/application.css.

```
...
*= require uikit.min.css
# or using custom theme
*= require uikit.tb-admin-theme.css
...
```
Run the following command to generate admin layout, shared partial views and admin base controller.

```
$ rails generate uikit_admin_rails:admin_controller
```

Run the following command to generate scaffold with templates.

```
$ rails generate scaffold article title:string content:text
```

And supports namespaced controller.

```
$ rails generate model article title:string content:text
$ rails generate scaffold_controller admin/article title:string content:text --model-name=article
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'uikit_admin_rails'

# for UIkit submodule loading
git submodule init # first time
git submodule update
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:

```bash
gem 'uikit_admin_rails', github: 'technobrain/uikit_admin_rails', branch: 'develop', submodules: true
```

## Customize templates
Run the following command to copy templates files for customize templates.

```
$ rails generate uikit_admin_rails:copy
```
And append following code to config/initializers/uikit_admin.rb.

```
Rails.application.config.generators.unshift File::expand_path('../../../lib/templates', __FILE__)
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
