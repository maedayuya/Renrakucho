class Category < ApplicationRecord
  has_many :admins, dependent: :destroy
end
