class LetterGrade < ActiveRecord::Base
  
  # Associations
  belongs_to :ensemble
  
  # Vaidations
  validates :grade, presence: true, length: { minimum: 1, maximum: 2 }
  validates :min_points, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :max_points, numericality: { only_integer: true }, allow_nil: true
  validate :max_greater_than_min
  
  private
    def max_greater_than_min
      errors.add(:max_points, 'must be greater than the minimum points') if max_points && min_points && max_points < min_points
    end
  
end
