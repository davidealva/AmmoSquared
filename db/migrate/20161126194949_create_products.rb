class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :prod_type
      t.string :caliber
      t.string :grade
      t.string :bullet_weight
      t.decimal :cost_per_round
      t.decimal :price_per_round
      t.string :rounds_per_box
      t.decimal :box_price
      t.text :description
      t.decimal :weight_per_round
      t.string :brand
      t.string :sku
      t.string :quantity_avail

      t.timestamps
    end
  end
end
