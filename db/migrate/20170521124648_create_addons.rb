class CreateAddons < ActiveRecord::Migration
    def change
        create_table :addons do |t|
            t.string :name
            t.string :color
            t.text :description
            t.references :baseherb, foreign_key: true
            t.timestamps null: false
        end
    end
end
