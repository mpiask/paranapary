class Jar < ApplicationRecord
  belongs_to :order
  has_many :ingredients
end
