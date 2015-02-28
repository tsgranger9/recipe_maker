json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :user_id, :directions, :time_needed
  json.url recipe_url(recipe, format: :json)
end
