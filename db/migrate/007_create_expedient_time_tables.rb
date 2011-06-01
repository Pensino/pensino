class CreateExpedientTimeTables < ActiveRecord::Migration
  def self.up
    create_table :expedient_time_tables do |t|

      t.references  :expedient, :time_table

      t.timestamps
    end
  end

  def self.down
    drop_table :expedient_time_tables
  end
end

