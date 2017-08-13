class AddJarIdToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_reference :ingredients, :jar_id, foreign_key: true
  end
end
