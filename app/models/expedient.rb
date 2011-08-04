# Pensino core
# Copyright (C) 2011 by pensino.com.br
#
# This program isn't free software
# ------------------------------------------------------------------------------
#
# id                      :: integer, not null, primary key
# day                     :: integer
# start_time              :: time
# end_time                :: time
# quantity_lessons        :: integer
#
class Expedient < ActiveRecord::Base

  has_many    :expedient_time_tables

  validates   :day, :start_time, :end_time, :quantity_lessons, :presence => true

  validate :end_time_is_after_start_time

  # TODO: arrumar isso
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

  private
  def end_time_is_after_start_time
    errors.add( 'end_time', 'A hora final deve ser maior que a hora inicial' ) unless start_time < end_time
  end
end

