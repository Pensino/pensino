require 'test_helper'

class MatterTest < ActiveSupport::TestCase

  test "matter attributes must not be empty" do
		matter = Matter.new
		assert matter.invalid?
		assert matter.errors[:name].any?
		assert matter.errors[:description].any?
		assert matter.errors[:quantity_lessons].any?
	end

  test "matter is not valid without a unique name" do
		matter = Matter.new(:name => matters(:aula_intelig_artificial).name,
												:description => "outra descricao",
												:quantity_lessons => 1)
		assert !matter.save
		assert_equal "já está em uso", matter.errors[:name].join('; ')
	end

end

