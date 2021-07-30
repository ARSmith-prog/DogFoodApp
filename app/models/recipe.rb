class Recipe < ApplicationRecord
  has_many :comments

  def self.search_by(search_term)
    where("LOWER(ingredients) LIKE :search_term",
          search_term: "%#{search_term.downcase}%")
  end

  validates :title, presence: true
  validates :description, presence: true
  validates :ingredients, presence: true
  validates :directions, presence: true

end
