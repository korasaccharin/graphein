class BarRenderer < SimpleNavigation::Renderer::Base
  def render(item_container)
    SimpleNavigation.config.selected_class = 'active'

    content = ''
    item_container.items.each { |item| content << build(item) }
    content.html_safe
  end

  protected

  def build item
    options                = item.send :options
    icon                   = options[:icon]
    classes                = item.html_options[:class]
    include_sub_navigation = consider_sub_navigation?(item)
    container              = item.send :container
    level                  = container.send :level
    content                = "
      <li"
    content               += " class=\"#{classes}\"" unless classes.nil?
    content               += '>'
    content               += "<a href=\"#{item.url}\">"
    content               += "<i class=\"fa #{options[:icon]}\"></i>" if icon
    content               += '<span class="nav-label">' if level == 1
    content               += item.name
    content               += '</span>' if level == 1
    content               += '<span class="fa arrow"></span>' if include_sub_navigation
    content               += '</a>'
    content               += make_subnavigation(item) if include_sub_navigation
    content               += '</li>'

    content
  end

  def build_subnavigation item
    "<ul class='nav nav-second-level collapse'>#{render_sub_navigation_for(item)}</ul>"
  end
end
