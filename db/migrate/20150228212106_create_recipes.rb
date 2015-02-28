class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.references :user, index: true
      t.text :directions
      t.time :time_needed

      t.timestamps
    end
  end
end
