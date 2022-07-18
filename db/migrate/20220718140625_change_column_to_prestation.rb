class ChangeColumnToPrestation < ActiveRecord::Migration[7.0]
  def change
    rename_column :prestations, :date, :time
  end
end
