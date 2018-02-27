# frozen_string_literal: true

# active in own controller
module NavmenuHelper
  def active_menu_item(title:, path:, ctrl:, css_class: 'uk-active')
    css = (controller_name.eql?(ctrl)) ? css_class : ''

    content_tag :li, class: css do
      link_to title, path
    end
  end
end
