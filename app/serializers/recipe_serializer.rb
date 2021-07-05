class RecipeSerializer < ActiveModel::Serializer
  
  attributes :id, :title, :recipe_link, :image_link, :ingredients
end
