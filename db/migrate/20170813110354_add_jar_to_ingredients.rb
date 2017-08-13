class AddJarToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_reference :ingredients, :jar, foreign_key: true
  end
end
