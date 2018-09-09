json.extract! product, :id, :name, :size, :color_light, :price, :min_order, :subcategory_id, :created_at, :updated_at
json.url product_url(product, format: :json)
