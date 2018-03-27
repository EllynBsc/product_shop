class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true
      t.string :title
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
