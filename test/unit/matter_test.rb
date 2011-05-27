require 'test_helper'

class MatterTest < ActiveSupport::TestCase

  test "matter attributes must not be empty" do
		matter = Matter.new
		assert matter.invalid?
		assert matter.errors[:name].any?
		assert matter.errors[:description].any?
		assert matter.errors[:quantity_classes].any?
	end

  test "matter is not valid without a unique name" do
		matter = Matter.new(:name => matters(:aula_intelig_artificial).name,
												:description => "outra descricao",
												:quantity_classes => 1)
		assert !matter.save
		assert_equal "has already been taken", matter.errors[:name].join('; ')
	end

end

