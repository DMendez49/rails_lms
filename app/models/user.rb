class User < ApplicationRecord
  #Associations
  has_many :enrollments
  has_many :courses, through: :enrollments

  #Instance Methods
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end

