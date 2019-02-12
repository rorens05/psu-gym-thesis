module ApplicationHelper
  def check_if_active(url)
    if url == controller_name
      return "active"
    end
  end

  def validate_image(image)
    if image.attachment
      return image
    else
      return "/images/image_not_found.png"
    end 
  end  
end
