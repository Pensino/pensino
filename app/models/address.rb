# Pensino core
# Copyright (C) 2011 by pensino.com.br
#
# This program isn't free software
# ------------------------------------------------------------------------------
#
# id                      :: integer, not null, primary key
# addressable_id          :: integer, foreign key
# addressable_type        :: string, foreign key
# name                    :: string
# number                  :: string
# complement              :: string
# zip_code                :: string
# neighborhood            :: string
# city                    :: string
# state                   :: string
#
class Address < ActiveRecord::Base

  belongs_to  :addressable, :polymorphic => true
end

