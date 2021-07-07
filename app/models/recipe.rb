class Recipe < ApplicationRecord
  has_many :comments


  def self.search(search)
    if search
      recipe = Recipe.find_by(ingridents: search)
      if recipe
        self.where(recipe_id: recipe)
      else
        Recipe.all
      end
    else
      Recipe.all
    end
  end


  validates :title, presence: true
  validates :description, presence: true
  validates :ingredients, presence: true
  validates :directions, presence: true

end
