# Pensino core
# Copyright (C) 2011 by pensino.com.br
#
# This program isn't free software
# ------------------------------------------------------------------------------
#
# id                      :: integer, not null, primary key
# name                    :: string
# description             :: string
# quantity_lessons        :: integer
#
class Matter < ActiveRecord::Base

  has_many    :grids

  validates   :name, :description, :quantity_lessons, :presence => true
  validates   :name, :uniqueness => true
end

