class ExpedientTimeTable < ActiveRecord::Base

  belongs_to :time_table
  belongs_to :expedient

  has_many :lessons

end

