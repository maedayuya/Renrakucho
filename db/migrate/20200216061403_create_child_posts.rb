class CreateChildPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :child_posts do |t|
      t.references :admin
      t.references :child
      t.string :title
      t.text :body
      t.string :image
      t.integer :condition

      t.timestamps
    end
  end
end
