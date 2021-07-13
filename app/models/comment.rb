class Comment < ApplicationRecord
  belongs_to :recipe

  validates_presence_of :recipe
  validates :content, presence: true
  validates :name, presence: true
end
