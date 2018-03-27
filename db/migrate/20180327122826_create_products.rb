class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :price
      t.string :title
      t.text :description
      t.boolean :availability
      t.float :average_rating
      t.integer :stock
      t.text :specification

      t.timestamps
    end
  end
end
