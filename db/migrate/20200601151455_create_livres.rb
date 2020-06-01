class CreateLivres < ActiveRecord::Migration[5.2]
  def change
    create_table :livres do |t|
      t.string :title
      t.string :picture
      t.string :author

      t.timestamps
    end
  end
end
