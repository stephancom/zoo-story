module ApplicationHelper
  def glyphlink(glyphicon, link, params = {})
    link_to content_tag(:i, class: ['glyphicon', glyphicon]), link, params
  end
end
