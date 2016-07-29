json.array!(@accesosdirectos) do |accesosdirecto|
  json.extract! accesosdirecto, :id, :usuario_id, :icon, :nombre, :url
  json.url accesosdirecto_url(accesosdirecto, format: :json)
end
