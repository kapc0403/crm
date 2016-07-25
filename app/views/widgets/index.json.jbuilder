json.array!(@widgets) do |widget|
  json.extract! widget, :id, :usuario_id, :w1, :w2, :w3, :w4, :w5, :w6, :w7, :w8, :w9, :w10, :w11, :w12, :colorlayout
  json.url widget_url(widget, format: :json)
end
