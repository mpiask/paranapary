class IngredientDecorator < Draper::Decorator
  decorates_association :jars
  delegate_all

  def ingr_list
    "#{quantity}% #{name}"
  end

end
