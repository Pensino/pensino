class CreateMatters < ActiveRecord::Migration
  def self.up
    create_table :matters do |t|

      t.string      :name
      t.text        :description
      t.integer     :quantity_lessons

      t.timestamps
    end
  end

  def self.down
    drop_table :matters
  end
end

