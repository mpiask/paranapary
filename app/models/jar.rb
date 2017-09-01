class Jar < ApplicationRecord
  belongs_to :order
  has_many :ingredients, dependent: :delete_all

  accepts_nested_attributes_for :ingredients, reject_if: proc { |a| a['quantity'].to_i < 1 }, :allow_destroy => true

  validate :must_be_full

  def fullness
    self.ingredients.map {|x| x[:quantity] }.sum
  end
  def isfull?
    return true if self.fullness == 100
    return false
  end
  def must_be_full
    unless isfull?
      errors.add(:jar, "must be full")
    end
  end
end
