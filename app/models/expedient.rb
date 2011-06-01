class Expedient < ActiveRecord::Base
  validates :day, :start_time, :end_time, :quantity_lessons, :presence => true

  has_many :expedient_time_tables

  #def name
  #  day + ' :: ' + start_time.to_s + ' :: ' + end_time.to_s + ' :: ' + quantity_lessons.to_s

  #end

  def name
    if day == 1
      name = 'Segunda-Feira ::' + start_time.to_s + ' :: ' + end_time.to_s + ' :: ' + quantity_lessons.to_s
    end

    if day == 2
      name = 'Terça-Feira ::' + start_time.to_s + ' :: ' + end_time.to_s + ' :: ' + quantity_lessons.to_s
    end

    if day == 3
      name = 'Quarta-Feira ::' + start_time.to_s + ' :: ' + end_time.to_s + ' :: ' + quantity_lessons.to_s
    end

    if day == 4
      name = 'Quinta-Feira ::' + start_time.to_s + ' :: ' + end_time.to_s + ' :: ' + quantity_lessons.to_s
    end

    if day == 5
      name = 'Sexta-Feira ::' + start_time.to_s + ' :: ' + end_time.to_s + ' :: ' + quantity_lessons.to_s
    end

    if day == 6
      name = 'Sábado ::' + start_time.to_s + ' :: ' + end_time.to_s + ' :: ' + quantity_lessons.to_s
    end

    if day == 7
      name = 'Domingo ::' + start_time.to_s + ' :: ' + end_time.to_s + ' :: ' + quantity_lessons.to_s
    end

    name
  end
end

