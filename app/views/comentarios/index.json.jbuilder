json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :placa, :coment, :usuario
  json.url comentario_url(comentario, format: :json)
end
