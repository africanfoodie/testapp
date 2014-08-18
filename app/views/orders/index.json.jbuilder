json.array!(@orders) do |order|
  json.extract! order, :id, :type, :quantity, :status, :user_id
  json.url order_url(order, format: :json)
end
