class Car < ApplicationRecord
  validates :description, presence: true, length: { maximum: 140, minimum: 3 }
   validates :title, presence: true, length: { maximum: 50, minimum: 3 }
end
