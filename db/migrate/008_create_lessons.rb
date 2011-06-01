class CreateLessons < ActiveRecord::Migration
  def self.up
    create_table :lessons do |t|

      t.references  :expedient_time_table
      t.date        :date_lesson
      t.time        :start_time
      t.time        :end_time
      t.integer     :quantity_lessons

      t.timestamps
    end
  end

  def self.down
    drop_table :lessons
  end
end

