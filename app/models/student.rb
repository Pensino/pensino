class Student < ActiveRecord::Base
  validates :first_name, :last_name, :document, :registration, :presence => true
  validates :document, :registration, :uniqueness => true

  has_many :addresses, :as => :addressable, :dependent => :destroy
  accepts_nested_attributes_for :addresses

  has_many :registrations
  has_many :enrollments

  def name
    first_name + ' ' + last_name
  end


end

