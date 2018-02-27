# frozen_string_literal: true

# active in own controller
module NavmenuHelper
  def active_menu_item(link_content:, path:, controller:, active_class: 'uk-active', default_class: '')
    css_class = (controller_name.eql?(controller)) ? active_class : default_class

    content_tag :li, class: css_class do
      link_to path do
        link_content
      end
    end
  end
end
