json.array!(@placas) do |placa|
  json.extract! placa, :id, :numero
  json.url placa_url(placa, format: :json)
end
