json.extract! order, :id, :currency, :name, :price, :sale, :category, :created_at, :updated_at
json.url order_url(order, format: :json)