class Infraction < ActiveRecord::Base
  # Validations
  validates :name, presence: true
end
