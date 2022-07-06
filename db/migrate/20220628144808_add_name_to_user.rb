class AddNameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :Last_name, :string
    add_column :users, :phone, :string
    add_column :users, :address, :string
    add_column :users, :admin, :boolean
  end
end