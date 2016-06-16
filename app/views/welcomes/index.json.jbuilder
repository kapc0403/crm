json.array!(@welcomes) do |welcome|
  json.extract! welcome, :id, :nombreEmpresa, :moneda, :nombreEncargado, :telEncargado, :telEmpresa, :direccionEmpresa, :correoEncargado
  json.url welcome_url(welcome, format: :json)
end
