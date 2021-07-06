class Comment < ApplicationRecord
  belongs_to :recipe

  has_one :user
end
