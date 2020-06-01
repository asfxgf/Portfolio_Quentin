class AddUrlToLivres < ActiveRecord::Migration[5.2]
  def change
    add_column :livres, :url, :string
  end
end
