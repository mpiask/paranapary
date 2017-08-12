class CreateIngredient < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.integer :quantity
      t.references :herb
    end
  end
end
