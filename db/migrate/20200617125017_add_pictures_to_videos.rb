class AddPicturesToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :picture, :string
  end
end
