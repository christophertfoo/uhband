class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :entry_id
      t.integer :student_id
      t.text :note

      t.timestamps
    end
  end
end
