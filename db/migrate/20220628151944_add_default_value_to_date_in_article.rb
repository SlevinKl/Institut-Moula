class AddDefaultValueToDateInArticle < ActiveRecord::Migration[7.0]
  def change
    change_column :articles, :date, :date, default: DateTime.now
  end
end
