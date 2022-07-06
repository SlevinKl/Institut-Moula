class CreatePrestations < ActiveRecord::Migration[7.0]
  def change
    create_table :prestations do |t|
      t.string :title
      t.text :content
      t.string :price
      t.string :category
      t.datetime :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
