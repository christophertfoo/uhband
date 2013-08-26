class Note < ActiveRecord::Base
  
  # Associations
  belongs_to :entry
  belongs_to :student
  
  # Validations
  validates :note, presence: true
  validates :entry_id, presence: true
  validates :student_id, presence: true
end
