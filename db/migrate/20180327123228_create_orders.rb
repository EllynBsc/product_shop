class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.datetime :date
      t.float :total_bill
      t.datetime :estimated_delivery_day
      t.string :state

      t.timestamps
    end
  end
end
