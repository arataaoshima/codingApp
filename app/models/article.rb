class Article < ApplicationRecord

  has_many :subcontents
  mount_uploader :image, ImageUploader
end
