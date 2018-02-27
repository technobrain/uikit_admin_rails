# frozen_string_literal: true

# active in own controller
module NavmenuHelper
  def active_menu_item(model:, namespace: nil, css_class: 'uk-active')
    css = (controller_name.eql?(model.tableize)) ? css_class : ''
    path = send([namespace, model.tableize].compact.join('_').concat('_path'))

    content_tag :li, class: css do
      link_to model.titleize.pluralize, path
    end
  end
end
