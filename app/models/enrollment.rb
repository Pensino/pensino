class Enrollment < ActiveRecord::Base

  belongs_to :time_table
  belongs_to :student


  # TODO: Validar se já existe uma time_table para a grade
  def release(registration)

    registration.course.grids.each do |grid|

      enrollment = Enrollment.new

      enrollment.time_table_id = grid.time_table.id
      enrollment.student = registration.student

      enrollment.save
    end
  end

end

