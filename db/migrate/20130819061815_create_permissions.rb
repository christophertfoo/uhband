class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.boolean :read
      t.boolean :edit

      t.timestamps
    end
  end
end
