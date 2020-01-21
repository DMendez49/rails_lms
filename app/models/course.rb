class Course < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :user, through: :enrollments

  # Instance Methods
  def full_name
    "#{self.full_name} #{self.last_name}"
  end
end
