class Ingredient < ApplicationRecord
  belongs_to :herb
  belongs_to :jar

  # validates :quantity, numericality: { greater_than: 0, less_than_or_equal_to: 60 }

  def name
    herb.name
  end

  def color
    herb.color
  end
end
