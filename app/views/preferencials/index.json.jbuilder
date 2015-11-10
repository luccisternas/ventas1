json.array!(@preferencials) do |preferencial|
  json.extract! preferencial, :id, :nombre, :cliente_id
  json.url preferencial_url(preferencial, format: :json)
end
