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

  WEEKDAYS = ["Domingo",
              "Segunda-Feira",
              "Terça-Feira",
              "Quarta-Feira",
              "Quinta-Feira",
              "Sexta-Feira",
              "Sabado" ]

  has_many :expedient_time_tables

  validates :day, :start_time, :end_time, :quantity_lessons, :presence => true
  validates :day, :inclusion => WEEKDAYS

  validate :end_time_is_after_start_time

  def name
    "#{day}::#{start_time.strftime("%H:%M:%S")}::#{end_time.strftime("%H:%M:%S")}::#{quantity_lessons}"
  end

  private
  def end_time_is_after_start_time
    errors.add('end_time', 'A hora final deve ser maior que a hora inicial') unless start_time < end_time
  end

end

