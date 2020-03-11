class AddCategoryToAdmin < ActiveRecord::Migration[5.2]
  def change
    add_reference :admins, :category, foreign_key: true
  end
end
