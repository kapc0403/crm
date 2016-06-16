json.array!(@modelo_personalizados) do |modelo_personalizado|
  json.extract! modelo_personalizado, :id, :colorApariencia, :homeW1, :homeW2, :homeW3, :homeW4, :homeW5, :homeW6, :homeW7, :homeW8, :homeW9, :homeW10, :usuario_id
  json.url modelo_personalizado_url(modelo_personalizado, format: :json)
end
