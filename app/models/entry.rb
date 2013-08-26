class Entry < ActiveRecord::Base
  
  # Associations
  belongs_to :membership
  belongs_to :event
  belongs_to :infraction
  has_many :notes
  
  # Validations
  validates :membership_id, presence: true
  validates :event_id, presence: true
  validates :infraction_id, presence: true
end
