class Video < ActiveRecord::Base
  mount_uploader :file, FileUploader
  validates_presence_of :title, :description, :file
end
