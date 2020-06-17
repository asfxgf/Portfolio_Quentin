class CreateProjets < ActiveRecord::Migration[5.2]
  def change
    create_table :projets do |t|
      t.string :title
      t.string :description
      t.string :url
      t.string :picture

      t.timestamps
    end
  end
end
