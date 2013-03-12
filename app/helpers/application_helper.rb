module ApplicationHelper

  def things_to_do(links)
    # key = body, value = URL
    things_to_do_html = '<ul>'
    links.each do |body, url|
      things_to_do_html += '<li>' + link_to(body, url) + '</li>'
      # things_to_do_html += "<li>#{link_to(body, url, target: '_blank')}</li>\n"
    end
    things_to_do_html += '</ul>'
    return things_to_do_html.html_safe
  end

  def show_params

    if params[:commit]
      html = "<div style='border: 1px red solid; margin: 10px; padding: 10px; font:15px arial,sans-serif;'>"
      html += "<heading style='color: red;'>PARAMS</heading><br>"
      params.each do |key, value|
        html += "<span style='color: blue;'>#{key}:</span> #{value}<br>" if key != 'authenticity_token' && key != 'utf8'
      end
      html += '</div>'
    else
      html = ''
    end
    return html.html_safe

  end

end
