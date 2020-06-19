class AddUserIdToLivres < ActiveRecord::Migration[5.2]
  def change
        add_column :livres, :user_id, :integer
  end
end
