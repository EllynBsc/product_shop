class AddAttributesToUsers < ActiveRecord::Migration[5.1]
  def change
     add_column :users, :first_name, :string
     add_column :users, :last_name, :string
     add_column :users, :country, :string
     add_column :users, :address, :string
     add_column :users, :zip_code, :string
  end
end
