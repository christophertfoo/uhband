class CreateLetterGrades < ActiveRecord::Migration
  def change
    create_table :letter_grades do |t|
      t.string :grade
      t.integer :min_points
      t.integer :max_points

      t.timestamps
    end
  end
end
