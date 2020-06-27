class AddTextToProjets < ActiveRecord::Migration[5.2]
  def change
    add_column :projets, :text, :text
  end
end
