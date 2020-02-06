class Post < ApplicationRecord
  belongs_to :admin

  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200}
end
