class ChildPost < ApplicationRecord
  belongs_to :admin
  belongs_to :child

  mount_uploader :image, ImageUploader

end
