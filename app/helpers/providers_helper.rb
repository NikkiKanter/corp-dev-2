module ProvidersHelper

  def resolve_container
    if params[:embeded]
      'container-fluid'
    else
      'container'
    end
  end

  def standardize_time(time)
    return "N/A" if time.blank?
    t = Time.parse(time) 
    t.strftime("%l:%M %p")
  end

  def default_image(url)
    uri = URI.parse(url)
    path = File.basename(uri.path)
    return true if path == 'missing.png'
    false
  end
end