class AddClientDataToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :name, :string
    add_column :orders, :surname, :string
    add_column :orders, :street, :string
    add_column :orders, :zipcode, :string
    add_column :orders, :city, :string
    add_column :orders, :country, :string
    add_column :orders, :phone, :string
    add_column :orders, :paid, :boolean, default: false
    add_column :orders, :confirmed, :boolean, default: false
    add_column :orders, :value, :decimal
  end
end
