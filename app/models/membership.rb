class Membership < ActiveRecord::Base
  
  # Associations
  belongs_to :student
  belongs_to :section
  
  # Validations
  validates :student_id, presence: true
  validates :section_id, presence: true
end
