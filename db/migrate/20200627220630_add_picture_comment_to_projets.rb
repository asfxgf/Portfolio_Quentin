class AddPictureCommentToProjets < ActiveRecord::Migration[5.2]
  def change
    add_column :projets, :picture_comment_1, :string
    add_column :projets, :picture_comment_2, :string
    add_column :projets, :picture_comment_3, :string
  end
end
