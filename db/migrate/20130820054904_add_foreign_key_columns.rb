class AddForeignKeyColumns < ActiveRecord::Migration
  def change
    add_column :memberships, :student_id, :integer
    add_column :memberships, :section_id, :integer
    
    add_column :sections, :membership_id, :integer
    add_column :sections, :ensemble_id, :integer
    
    add_column :permissions, :superior_id, :integer
    add_column :permissions, :subordinate_id, :integer
    
    add_column :letter_grades, :ensemble_id, :integer
    
    add_column :entries, :membership_id, :integer
    add_column :entries, :event_id, :integer
    add_column :entries, :infraction_id, :integer
    
    add_column :events, :event_type_id, :integer
    
    add_column :event_types, :ensemble_id, :integer
    
    add_column :rules, :event_type_id, :integer
    add_column :rules, :infraction_id, :integer
  end
end
