module ApplicationHelper
  def picture_img(picture)
    return image_tag(picture.image_url)
  end
end
