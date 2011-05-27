class Matter < ActiveRecord::Base
  validates :name, :description, :quantity_lessons, :presence => true
  validates :name, :uniqueness => true

  has_many :grids
end

