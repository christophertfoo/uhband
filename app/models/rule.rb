class Rule < ActiveRecord::Base
  
  # Associations
  belongs_to :event_type
  belongs_to :infraction
  
  # Validations
  validates :point_value, presence: true, numericality: { only_integer: true }
  validates :event_type_id, presence: true
  validates :infraction_id, presence: true
end
