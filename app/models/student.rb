# Pensino core
# Copyright (C) 2008-2010 by pensino.com.br
#
# This program isn't free software
# ------------------------------------------------------------------------------
#
# id                      :: integer, not null, primary key
# first_name              :: string
# last_name               :: string
# document                :: string
# registration            :: integer
#
class Student < ActiveRecord::Base


  has_many    :addresses, :as => :addressable, :dependent => :destroy
  has_many    :registrations
  has_many    :enrollments

  accepts_nested_attributes_for :addresses

  validates   :first_name, :last_name, :document, :registration, :presence => true
  validates   :document, :registration, :uniqueness => true

  def name
    first_name + ' ' + last_name
  end


end

