class CreateJars < ActiveRecord::Migration[5.1]
  def change
    create_table :jars do |t|

      t.integer :quantity
      t.timestamps
    end
  end
end
