# Pensino core
# Copyright (C) 2011 by pensino.com.br
#
# This program isn't free software
# ------------------------------------------------------------------------------
#
# id                      :: integer, not null, primary key
# first_name              :: string
# last_name               :: string
# document                :: string
# registration            :: integer
# coordinator             :: boolean
# professor               :: boolean
#
class Employee < ActiveRecord::Base

  has_many    :courses
  has_many    :time_tables
  has_many    :addresses, :as => :addressable, :dependent => :destroy

  accepts_nested_attributes_for :addresses

  validates   :first_name, :last_name, :document, :registration, :presence => true
  validates   :document, :registration, :uniqueness => true

  def name
    first_name + ' ' + last_name
  end
end

