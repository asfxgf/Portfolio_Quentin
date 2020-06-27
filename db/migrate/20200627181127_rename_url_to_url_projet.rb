class RenameUrlToUrlProjet < ActiveRecord::Migration[5.2]
  def change
    rename_column :projets, :url, :url_projet
  end
end
