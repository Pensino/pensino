class CreateExpedients < ActiveRecord::Migration
  def self.up
    create_table :expedients do |t|
      t.string :day
      t.time :start_time
      t.time :end_time
      t.integer :quantity_lessons

      t.timestamps
    end
  end

  def self.down
    drop_table :expedients
  end
end
