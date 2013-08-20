class RenameEnsembleYearToSemester < ActiveRecord::Migration
  def change
    rename_column :ensembles, :year, :semester
  end
end
