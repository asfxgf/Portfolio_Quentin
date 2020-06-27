class RenamePictureToBackgroundPicture < ActiveRecord::Migration[5.2]
  def change
    rename_column :projets, :picture, :background_picture
  end
end
