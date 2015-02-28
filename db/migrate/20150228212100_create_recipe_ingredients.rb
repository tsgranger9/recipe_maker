class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.references :ingredient, index: true
      t.references :recipe, index: true
      t.float :grams
      t.boolean :approved
      t.integer :calories

      t.timestamps
    end
  end
end
