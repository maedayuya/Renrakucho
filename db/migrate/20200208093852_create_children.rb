class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.references :user, foreign_key: true
      t.references :class_name, foreign_key: true
      t.string :name, null: false, default: ""
      t.text :information

      t.timestamps
    end
  end
end
