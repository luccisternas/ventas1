json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :apellido, :direccion, :fono
  json.url cliente_url(cliente, format: :json)
end
