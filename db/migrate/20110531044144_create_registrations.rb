class CreateRegistrations < ActiveRecord::Migration
  def self.up
    create_table :registrations do |t|
      t.integer :course_id
      t.integer :student_id
      t.integer :status

      t.timestamps
    end
  end

  def self.down
    drop_table :registrations
  end
end
