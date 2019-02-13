module ApplicationHelper
  def check_if_active(urls)
    urls.each do |url|
      if url == controller_name
        return "active"
      end
    end
  end

  def validate_image(image)
    if image.attachment
      return image
    else
      return "/images/image_not_found.png"
    end 
  end  

  def limit_string(string, lenght)
    string[0..lenght].gsub(/\s\w+$/,'...')
  end

  def format_date(date)
    return date.strftime("%B %e, %Y")
  end
end
