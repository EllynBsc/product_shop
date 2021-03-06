class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.datetime :date
      t.float :total_bill
      t.datetime :estimated_delivery_day
      t.string :state
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
