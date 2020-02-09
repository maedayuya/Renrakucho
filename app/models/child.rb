class Child < ApplicationRecord
  belongs_to :class_name
  belongs_to :user
  validates :class_name, presence: true
  validates :name, presence: true
end
