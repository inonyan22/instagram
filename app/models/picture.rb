class Picture < ActiveRecord::Base
  validates :title,  presence: true
 mount_uploader :image_url,ImageUrlUploader
 belongs_to :user
end
