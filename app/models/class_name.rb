class ClassName < ApplicationRecord
  belongs_to :admin
  has_many :children, dependent: :destroy
  accepts_nested_attributes_for :children, allow_destroy: true

  validates :name, presence: true
  validate :must_have_children

  def must_have_children
    if children.empty? or children.all? {|child| child.marked_for_destruction? }
     errors.add(:base, 'Must have at least one child')
    end
  end
end
