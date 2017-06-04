class CreateBaseherbs < ActiveRecord::Migration
    def change
        create_table :baseherbs do |t|
            t.string :name
            t.string :color
            t.text :description
            t.string :image
            t.timestamps null: false
        end
    end
end