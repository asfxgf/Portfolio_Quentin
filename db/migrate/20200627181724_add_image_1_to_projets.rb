class AddImage1ToProjets < ActiveRecord::Migration[5.2]
  def change
    add_column :projets, :picture_1, :string
    add_column :projets, :picture_2, :string
    add_column :projets, :picture_3, :string
  end
end
