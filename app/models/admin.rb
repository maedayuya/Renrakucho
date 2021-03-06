class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts,dependent: :destroy
  has_many :class_names,dependent: :destroy
  has_many :child_posts,dependent: :destroy
  belongs_to :category
end
