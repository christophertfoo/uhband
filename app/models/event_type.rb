class EventType < ActiveRecord::Base
  
  # Associations
  belongs_to :ensemble
  has_many :events
  has_many :rules
  
  # Validations
  validates :name, presence: true
  validates :ensemble_id, presence: true
end
