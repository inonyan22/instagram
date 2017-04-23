class Picture < ActiveRecord::Base
  validates :title, :image_url, presence: true
 mount_uploader :image_url,ImageUrlUploader
end
