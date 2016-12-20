json.extract! product, :id, :prod_type, :caliber, :grade, :bullet_weight, :cost_per_round, :price_per_round, :rounds_per_box, :description, :weight_per_round, :brand, :sku, :quantity_avail, :created_at, :updated_at
json.url product_url(product, format: :json)
