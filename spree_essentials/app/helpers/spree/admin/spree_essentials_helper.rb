module Spree::Admin::SpreeEssentialsHelper
  
  def inside_contents_tab?
    return false
  end
  
  def contents_tab
    content_tag :li do
      link_to I18n.t('spree.admin.shared.contents_tab.content'), extension_routes.first
    end
  end
  
  def markdown_helper
    content_tag('em', :class => 'small markdown-helper') do
      [ 
        t('essentials.parsed_with'),
        link_to("Markdown", "http://daringfireball.net/projects/markdown/basics", :onclick => 'window.open(this.href); return false')
      ].join(" ").html_safe
    end
  end

private
  
  def extension_routes
    @extension_routes ||= SpreeEssentials.essentials.map { |key, cls|
      route = cls.tab[:route] || "admin_#{key}"
      send("#{route}_path") rescue "##{key}"      
    }.push(spree.admin_uploads_path)    
  end
  
end
