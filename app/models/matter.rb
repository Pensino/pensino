class Matter < ActiveRecord::Base
  validates :name, :description, :quantity_classes, :presence => true
  validates :name, :uniqueness => true
end

