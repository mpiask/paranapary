class Ingredient < ApplicationRecord
  belongs_to :herb
  belongs_to :jar

  def name
    herb.name
  end

  def color
    herb.color
  end
end
