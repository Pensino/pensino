class CreateGrids < ActiveRecord::Migration
  def self.up
    create_table :grids do |t|

      t.references  :course, :matter
      t.integer     :step
      t.boolean     :generate_lesson, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :grids
  end
end

