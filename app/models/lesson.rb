# Pensino core
# Copyright (C) 2011 by pensino.com.br
#
# This program isn't free software
# ------------------------------------------------------------------------------
#
# id                      :: integer, not null, primary key
# expedient_time_table_id :: integer, foreign key
# date_lesson             :: date
# start_time              :: time
# end_time                :: time
# quantity_lessons        :: integer
#
class Lesson < ActiveRecord::Base

  belongs_to  :expedient_time_table
end

