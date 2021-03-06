# UikitAdminRails
Short description and motivation.

## Usage
How to use my plugin.

Run the following command to generate the initializer file.

```
$ rails generate uikit_admin_rails:install
$ rails generate uikit_admin_rails:install_uikit
```
Then generate scss theme file to app/assets/stylesheets directory.  
And install [Uikit](https://getuikit.com/) css framework as node module.

Append following code to app/assets/javascripts/application.js

```
...
//= require uikit/dist/js/uikit.min.js
//= require uikit/dist/js/uikit-icons.min.js
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

You can generate navigation menu in side bar.

```
$ rails generate uikit_admin_rails:navmenu:init [NAMESPACE]# for generate navigation memu and navmenu_helper.
$ rails generate uikit_admin_rails:navmenu:add [MODEL_NAME] -n [NAMESPACE] # for generate nav item.

# ex. rails generate uikit_admin_rails:navmenu:init admin
# ex. rails generate uikit_admin_rails:navmenu:add article comment -n admin
```

## Installation
Add this line to your application's Gemfile:

```bash
gem 'uikit_admin_rails', github: 'technobrain/uikit_admin_rails', branch: 'develop'
```
Then run bundle install

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



## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
