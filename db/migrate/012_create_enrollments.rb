class CreateEnrollments < ActiveRecord::Migration
  def self.up
    create_table :enrollments do |t|

      t.references :time_table, :student

      t.timestamps
    end
  end

  def self.down
    drop_table :enrollments
  end
end

