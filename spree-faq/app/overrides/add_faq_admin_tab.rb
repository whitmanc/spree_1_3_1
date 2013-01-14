Deface::Override.new(:virtual_path => %q{spree/admin/shared/_configuration_menu},
                     :name => %q{add_faq_configuration_line},
                     :insert_bottom => %q{[data-hook="admin_configurations_sidebar_menu"]},
                     :text => %q{<%= configurations_sidebar_menu_item t(:question_categories_admin), admin_question_categories_url %>},
                     :disabled => false)