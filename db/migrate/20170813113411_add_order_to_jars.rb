class AddOrderToJars < ActiveRecord::Migration[5.1]
  def change
    add_reference :jars, :order, foreign_key: true
  end
end
