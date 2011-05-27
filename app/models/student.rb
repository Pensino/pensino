class Student < ActiveRecord::Base
  validates :first_name, :last_name, :document, :registration, :presence => true
  validates :document, :registration, :uniqueness => true
end

