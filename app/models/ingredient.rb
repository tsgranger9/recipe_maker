class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  has_and_belongs_to_many :recipes
end
