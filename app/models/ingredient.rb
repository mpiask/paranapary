class Ingredient < ApplicationRecord
  belongs_to :herb
  belongs_to :jar
end
