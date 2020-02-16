class Person < ApplicationRecord
  has_many :payments
  validates :name, presence: true, length: {minimum: 2}
end
