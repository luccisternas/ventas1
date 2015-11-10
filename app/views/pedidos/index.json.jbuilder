json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :producto_id, :cliente_id
  json.url pedido_url(pedido, format: :json)
end
