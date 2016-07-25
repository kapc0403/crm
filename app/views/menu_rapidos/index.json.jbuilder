json.array!(@menu_rapidos) do |menu_rapido|
  json.extract! menu_rapido, :id, :usuario_id, :accesor1, :accesor2, :accesor3, :accesor4, :accesor5, :acceso6, :accesor7
  json.url menu_rapido_url(menu_rapido, format: :json)
end
