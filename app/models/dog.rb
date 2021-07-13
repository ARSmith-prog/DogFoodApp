class Dog < ApplicationRecord
  belongs_to :user

  has_one_attached :image

def previous
  Dog.where("id < ?", self.id).first
end
def next
  Dog.where("id > ?", self.id).first
end
validates_presence_of :user
validates :title, presence: true
validates :age, numericality: {only_integer: true}
validates :user_id, presence: true

end
