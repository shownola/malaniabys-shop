class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :description
      t.string :image
      t.decimal :price, null: false, precision: 15, scale: 2
      t.decimal :cost
      t.string :sku

      t.timestamps
    end
  end
end
