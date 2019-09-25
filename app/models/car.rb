class Car < ApplicationRecord
  validates :description, presence: true, length: { maximum: 250, minimum: 3 }
  validates :title, presence: true, length: { maximum: 25, minimum: 3 }
end
