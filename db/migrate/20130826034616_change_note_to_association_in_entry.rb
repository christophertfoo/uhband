class ChangeNoteToAssociationInEntry < ActiveRecord::Migration
  def up
    remove_column :entries, :note
  end
  
  def down
    add_column :entries, :note, :text
  end
end
