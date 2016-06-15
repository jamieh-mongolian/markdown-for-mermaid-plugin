class MarkdownForMermaid < Redmine::Hook::ViewListener
  
  def view_layouts_base_html_head(context = {})
    tags = nil
    if (context[:controller].class.name == 'IssuesController' || context[:controller].class.name == 'WikiController' || context[:controller].class.name == 'DocumentsController')
      tags = [stylesheet_link_tag('mermaid.css', :plugin => 'redmine_markdown_for_mermaid')]
      tags << javascript_include_tag('mermaid.min.js', :plugin => 'redmine_markdown_for_mermaid')
      tags << javascript_include_tag('markdown_for_mermaid.js', :plugin => 'redmine_markdown_for_mermaid')
    end      
    return tags
  end
end
