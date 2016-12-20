class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :prod_type
      t.string :caliber
      t.string :grade
      t.string :bullet_weight
      t.decimal :cost_per_round, precision: 12, scale: 3
      t.decimal :price_per_round, precision: 12, scale: 3
      t.string :rounds_per_box
      t.decimal :box_price, precision: 12, scale: 3
      t.text :description
      t.decimal :weight_per_round
      t.string :brand
      t.string :sku
      t.string :quantity_avail
      t.boolean :active 
      t.timestamps
    end
  end
end
