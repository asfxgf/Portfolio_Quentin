class RemovePictureToVideos < ActiveRecord::Migration[5.2]
  def change
    remove_column :videos, :picture, :string
  end
end
