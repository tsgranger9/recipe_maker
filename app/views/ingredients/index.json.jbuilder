json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :carbohydrate, :sugar, :saturated_fat, :total_fat, :protein, :calories, :recipe_id
  json.url ingredient_url(ingredient, format: :json)
end
