class CreateEnsembles < ActiveRecord::Migration
  def change
    create_table :ensembles do |t|
      t.string :name
      t.string :year

      t.timestamps
    end
  end
end
