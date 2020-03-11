class ChildPost < ApplicationRecord
  belongs_to :admin
  belongs_to :child

  mount_uploader :image, ImageUploader
  validates :title, presence: true,length: { maximum: 15}
  validates :image, presence: true
  validates :condition, presence: true
  validates :body, presence: true, length: { maximum: 200}

end
