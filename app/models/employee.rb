class Employee < ActiveRecord::Base
  validates :first_name, :last_name, :document, :registration, :presence => true
  validates :document, :registration, :uniqueness => true

  has_many :addresses, :as => :addressable, :dependent => :destroy
  has_many :courses
  accepts_nested_attributes_for :addresses

  has_many :time_tables

  def name
    first_name + ' ' + last_name
  end
end

