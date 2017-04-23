class Picture < ActiveRecord::Base
  validates :title,  presence: true
 mount_uploader :image_url,ImageUrlUploader
end
