class ChangeDateTimeToString < ActiveRecord::Migration[7.0]
  def change
    change_column :prestations, :time, :string
  end
end
