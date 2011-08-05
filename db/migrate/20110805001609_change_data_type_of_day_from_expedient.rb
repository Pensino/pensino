class ChangeDataTypeOfDayFromExpedient < ActiveRecord::Migration
  class Expedient < ActiveRecord::Base
  end

  def self.up
    change_column :expedients, :day, :string

    Expedient.all.each do |expedient|
      expedient.day = 'Domingo'       if expedient.day == '1'
      expedient.day = 'Segunda-Feira' if expedient.day == '2'
      expedient.day = 'Terça-Feira'   if expedient.day == '3'
      expedient.day = 'Quarta-Feira'  if expedient.day == '4'
      expedient.day = 'Quinta-Feira'  if expedient.day == '5'
      expedient.day = 'Sexta-Feira'   if expedient.day == '6'
      expedient.day = 'Sabado'        if expedient.day == '7'

      expedient.save
    end
  end

  def self.down
    Expedient.all.each do |expedient|
      expedient.day = '1' if expedient.day == 'Domingo'
      expedient.day = '2' if expedient.day == 'Segunda-Feira'
      expedient.day = '3' if expedient.day == 'Terça-Feira'
      expedient.day = '4' if expedient.day == 'Quarta-Feira'
      expedient.day = '5' if expedient.day == 'Quinta-Feira'
      expedient.day = '6' if expedient.day == 'Sexta-Feira'
      expedient.day = '7' if expedient.day == 'Sabado'

      expedient.save
    end

    change_column :expedients, :day, :integer
  end
end

