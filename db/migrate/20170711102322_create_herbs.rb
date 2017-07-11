class CreateHerbs < ActiveRecord::Migration[5.1]
  def change
    create_table :herbs do |t|
      t.string :name
      t.string :color
      t.string :description
      t.string :image
      t.boolean :base

      t.timestamps
    end
  end
end
