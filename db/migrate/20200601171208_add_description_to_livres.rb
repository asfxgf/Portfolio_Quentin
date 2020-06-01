class AddDescriptionToLivres < ActiveRecord::Migration[5.2]
  def change
    add_column :livres, :description, :string
  end
end
