class CreateInfractions < ActiveRecord::Migration
  def change
    create_table :infractions do |t|
      t.string :name

      t.timestamps
    end
  end
end
