module ApplicationHelper
  def menus_tab
    content_tag :li, :class => inside_menus_tab? ? 'selected' : nil do
      link_to I18n.t('spree.admin.shared.menus_tab.menus'), '/admin/menu_bars',
              :class => 'icon_link with-tip icon-th-list'
    end
  end

  def inside_menus_tab?
    return false
  end
end
