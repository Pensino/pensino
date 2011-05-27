class Expedient < ActiveRecord::Base
  validates :day, :start_time, :end_time, :quantity_lessons, :presence => true
end

