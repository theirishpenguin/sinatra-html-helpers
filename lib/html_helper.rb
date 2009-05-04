module HtmlHelpers

  # Basic implementation of a HTML SELECT helper
  def select(resource_name, field_name, options_list, selected_value)
    html = ''
    options_list.each do |nv_pair|
      option_value = nv_pair.keys.first
      option_name = nv_pair.values.first
      html << "<option value=\"#{option_value}\""
      html << " selected=\"true\"" if option_value == selected_value
      html << '>'
      html << option_name
      html << "</option>"
    end
    "<select name=\"#{resource_name}_#{field_name}\">#{html}</select>"
  end
end
