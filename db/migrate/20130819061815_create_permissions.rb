class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.boolean :edit, default: false

      t.timestamps
    end
  end
end
