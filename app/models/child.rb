class Child < ApplicationRecord
  belongs_to :class_name
  belongs_to :user
  has_many :child_posts,dependent: :destroy
  validates :class_name, presence: true
  validates :name, presence: true
end
