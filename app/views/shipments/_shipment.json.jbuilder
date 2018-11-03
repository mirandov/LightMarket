json.extract! shipment, :id, :name, :size, :led_count, :color_light, :price, :subcategory_id, :created_at, :updated_at
json.url shipment_url(shipment, format: :json)
