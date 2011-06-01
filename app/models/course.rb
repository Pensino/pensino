# Pensino core
# Copyright (C) 2011 by pensino.com.br
#
# This program isn't free software
# ------------------------------------------------------------------------------
#
# id                      :: integer, not null, primary key
# name                    :: string
# categoy                 :: string
# steps                   :: integer
# employee_id             :: integer, foreign key
#
class Course < ActiveRecord::Base

  has_many    :grids
  has_many    :registrations
  belongs_to  :employee

  accepts_nested_attributes_for :grids,
                                :reject_if => proc { |attributes| attributes['matter_id'].blank? },
                                :allow_destroy => true

  validates   :name, :description, :category, :steps, :presence => true
  validates   :name, :uniqueness => true

  ## TODO: Arrumar isso
  def category_name

    if category = 1
      category_name = "Semanal"
    end

    if category = 1
      category_name = "Bimestral"
    end

    if category = 1
      category_name = "Semestral"
    end
  end
end

