# Adds the Menus button to the admin tabs
Deface::Override.new(:virtual_path  => "spree/layouts/admin",
                     :name          => "spree_essential_admin_menu_tab",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :partial       => "spree/admin/shared/menus_tab",
                     :disabled      => false)