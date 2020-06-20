class AddUserIdToProjets < ActiveRecord::Migration[5.2]
  def change
      add_column :projets, :user_id, :integer
  end
end
