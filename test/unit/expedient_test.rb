require 'test_helper'

class ExpedientTest < ActiveSupport::TestCase

  test "start time should not be after end time" do

    finish = Time.now
    started = finish + 1 # hora inicial mais 1s

    expedient = Expedient.new(:day => 1,
                              :start_time => started,
                              :end_time => finish,
                              :quantity_lessons => 2)

    assert expedient.invalid?, 'O Expediente deveria estar inválido'

    msg_esperada = 'A hora final deve ser maior que a hora inicial'
    assert_equal msg_esperada, expedient.errors[:end_time].join('; ')

  end

end

