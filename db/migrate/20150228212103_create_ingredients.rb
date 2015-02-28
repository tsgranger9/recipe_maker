class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.float :carbohydrate
      t.float :sugar
      t.float :saturated_fat
      t.float :total_fat
      t.float :protein
      t.float :calories
      t.references :recipe, index: true

      t.timestamps
    end
  end
end
