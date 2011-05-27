class Course < ActiveRecord::Base
  validates :name, :description, :category, :steps, :presence => true
  validates :name, :uniqueness => true

  has_many :grids
  accepts_nested_attributes_for :grids,  :reject_if => proc { |attributes| attributes['matter_id'].blank? }, :allow_destroy => true
end

