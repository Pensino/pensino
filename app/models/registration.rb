class Registration < ActiveRecord::Base

  validates :course, :student, :presence => true

  belongs_to :course
  belongs_to :student
end

