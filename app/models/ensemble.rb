class Ensemble < ActiveRecord::Base
  
  # Associations
  has_many :sections
  has_many :letter_grades
  has_many :event_types
  has_many :events, through: :event_types
  
  # Validations
  validates :name, presence: true
  validates :year, presence: true
end
