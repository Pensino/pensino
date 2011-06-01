# Pensino core
# Copyright (C) 2011 by pensino.com.br
#
# This program isn't free software
# ------------------------------------------------------------------------------
#
# id                      :: integer, not null, primary key
# expedient_id            :: integer, foreign key
# time_table_id           :: integer, foreign key
#
class ExpedientTimeTable < ActiveRecord::Base

  has_many    :lessons
  belongs_to  :time_table
  belongs_to  :expedient
end

