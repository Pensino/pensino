class CreateTimeTables < ActiveRecord::Migration
  def self.up
    create_table :time_tables do |t|

      t.references  :grid, :employee
      t.date        :start_date
      t.date        :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :time_tables
  end
end

