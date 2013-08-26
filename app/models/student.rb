class Student < ActiveRecord::Base
  
  # Associations
  has_many :memberships
  
  has_many :sections, through: :memberships
  
  has_many :ensembles, through: :sections
  
  has_many :entries, through: :memberships
  
  has_many :subordinates, class_name: 'Permission', foreign_key: 'superior_id'
  has_many :superiors , class_name: 'Permission', foreign_key: 'subordinate_id'
  
  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :id_num, numericality: { only_integer: true, greater_than: 0 }, allow_nil: true
end
