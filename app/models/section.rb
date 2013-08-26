class Section < ActiveRecord::Base
  
  # Associations
  belongs_to :ensemble
  has_many :memberships
  has_many :students, through: :memberships
  
  # Validations
  validates :name, presence: true
  validates :ensemble_id, presence: true
end
