class TimeTable < ActiveRecord::Base

  validates :grid_id, :employee_id, :start_date, :end_date, :presence => true

  belongs_to :grid
  belongs_to :employee

  has_many :expedient_time_tables
  accepts_nested_attributes_for :expedient_time_tables,  :reject_if => proc { |attributes| attributes['expedient_id'].blank? }, :allow_destroy => true

  def name
    grid.name
  end

  def professor
    employee.name
  end

  def expedient_id
  end
end

