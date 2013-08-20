class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.integer :point_value

      t.timestamps
    end
  end
end
