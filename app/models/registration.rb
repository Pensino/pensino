# Pensino core
# Copyright (C) 2011 by pensino.com.br
#
# This program isn't free software
# ------------------------------------------------------------------------------
#
# id                      :: integer, not null, primary key
# course_id               :: integer, foreign key
# student_id              :: integer, foreign key
# status                  :: integer
#
class Registration < ActiveRecord::Base

  belongs_to   :course
  belongs_to  :student

  validates   :course, :student, :presence => true
end

