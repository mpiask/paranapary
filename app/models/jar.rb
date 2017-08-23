class Jar < ApplicationRecord
  belongs_to :order
  has_many :ingredients, dependent: :delete_all
end
