# Pensino core
# Copyright (C) 2011 by pensino.com.br
#
# This program isn't free software
# ------------------------------------------------------------------------------
#
# id                      :: integer, not null, primary key
# course_id               :: integer, foreign key
# matter_id               :: integer, foreign key
# step                    :: integer
# generate_lesson         :: boolean, default =  false
#
class Grid < ActiveRecord::Base

  has_one     :time_table
  belongs_to  :course
  belongs_to  :matter

  validates   :step, :presence => true

  def name
    course.name + ' :: ' + step.to_s + ' :: ' + matter.name
  end
end

