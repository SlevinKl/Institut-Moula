class AddTimeToPrestation < ActiveRecord::Migration[7.0]
  def change
    add_column :prestations, :time, :string
    remove_column :prestations, :date, :date
  end
end
