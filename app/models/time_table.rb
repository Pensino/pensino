# Pensino core
# Copyright (C) 2011 by pensino.com.br
#
# This program isn't free software
# ------------------------------------------------------------------------------
#
# id                     :: integer, not null, primary key
# grid_id                :: integer, foreign key
# employee_id            :: integer, foreign key
# steps                  :: integer
# start_date             :: date
# end_date               :: date
#
class TimeTable < ActiveRecord::Base

  has_many    :enrollments
  has_many    :expedient_time_tables
  belongs_to  :grid
  belongs_to  :employee

  accepts_nested_attributes_for :expedient_time_tables,
                                :reject_if => proc { |attributes| attributes['expedient_id'].blank? },
                                :allow_destroy => true

  validates   :grid_id, :employee_id, :start_date, :end_date, :presence => true

  def name
    grid.name
  end

  def professor
    employee.name
  end


  # TODO: Isto pode ser bem melhor! bem melhor
  # Se a data não estiver em ordem quebra o algoritimo
  def generate_lessons

    date_lesson       = start_date
    lessons_generated = 0

    while lessons_generated < grid.matter.quantity_lessons

      expedient_time_tables.each do |expedient_time_table|

        lesson = Lesson.new

        lesson.expedient_time_table_id = expedient_time_table.id
        lesson.date_lesson      = generate_day(date_lesson, expedient_time_table.expedient.day)
        lesson.start_time       = expedient_time_table.expedient.start_time
        lesson.end_time         = expedient_time_table.expedient.end_time
        lesson.quantity_lessons = expedient_time_table.expedient.quantity_lessons

        lesson.save

        lessons_generated += expedient_time_table.expedient.quantity_lessons
      end

      date_lesson = date_lesson + 7.days
    end
  end

  private
  # Incrementa os dias até chegar o dia da semana do expedient.
  def generate_day(date, day_of_week)

    while (date.strftime('%u').to_s != day_of_week.to_s)
      date += 1.day
    end

    date
  end
end

