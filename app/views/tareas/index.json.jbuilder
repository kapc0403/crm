json.array!(@tareas) do |tarea|
  json.extract! tarea, :id, :asunto, :estado, :prioridad, :descripcion, :fechaInicio, :fechaFin, :usuarios_id, :empresaclientes_id
  json.url tarea_url(tarea, format: :json)
end
