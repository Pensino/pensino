class Grid < ActiveRecord::Base
  validates :step, :presence => true

  belongs_to :course
  belongs_to :matter
  has_one :time_table

  def name
    course.name + ' :: ' + step.to_s + ' :: ' + matter.name
  end
end

