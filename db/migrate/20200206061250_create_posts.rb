class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :admin_id,null: false, default: ""
      t.string :title,null: false, default: ""
      t.text :body,null: false, default: ""

      t.timestamps
    end
  end
end
