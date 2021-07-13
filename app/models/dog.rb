class Dog < ApplicationRecord
  belongs_to :user

  has_one_attached :image


#   def next
#   user.dogs.where("id > ?", id).first
# end
#
# def previous
#   user.dogs.where("id < ?", id).last
# end

def previous
  Dog.where("id < ?", self.id).first
end
def next
  Dog.where("id > ?", self.id).first
end

end
