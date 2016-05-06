json.array!(@places) do |place|
  json.extract! place, :id, :city, :code, :population
  json.url place_url(place, format: :json)
end
