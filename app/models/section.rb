class Section < ActiveRecord::Base
  
  # Associations
  belongs_to :ensemble
  has_many :memberships
  has_many :students, through: :memberships
  
  # Validations
  validates :name, required: true
end
