json.array!(@animals) do |animal|
  json.extract! animal, :id, :name, :zoo_id, :species_id
  json.url animal_url(animal, format: :json)
end
