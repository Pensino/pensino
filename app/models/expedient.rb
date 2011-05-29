class Expedient < ActiveRecord::Base
  validates :day, :start_time, :end_time, :quantity_lessons, :presence => true

  has_many :expedient_time_tables

  def name
    day + ' :: ' + start_time.to_s + ' :: ' + end_time.to_s + ' :: '+ quantity_lessons.to_s
  end
end

