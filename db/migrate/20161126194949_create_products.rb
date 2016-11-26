class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :caliber
      t.string :grade
      t.string :bullet_weight
      t.decimal :cost_per
      t.decimal :price_per
      t.string :rounds_box
      t.text :description
      t.decimal :weight_per
      t.string :brand
      t.string :sku
      t.string :quantity_avail

      t.timestamps
    end
  end
end
