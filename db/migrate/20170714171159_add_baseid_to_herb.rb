class AddBaseidToHerb < ActiveRecord::Migration[5.1]
  def change
    add_column :herbs, :base_id, :integer
  end
end
