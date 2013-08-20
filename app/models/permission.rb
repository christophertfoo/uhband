class Permission < ActiveRecord::Base
  belongs_to :superior, class_name: "Student"
  belongs_to :subordinate, class_name: "Student"
  
  validates :superior_id, presence: true
  validates :subordinate_id, presence: true
end
