class Grid < ActiveRecord::Base
  validates :step, :presence => true

  belongs_to :course
  belongs_to :matter
end

