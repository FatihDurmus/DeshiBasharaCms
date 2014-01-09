class Picture < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates_presence_of :title, :description, :image

end
