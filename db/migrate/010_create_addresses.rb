class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|

      t.integer     :addressable_id
      t.string      :addressable_type

      t.string      :name
      t.string      :number
      t.string      :complement
      t.string      :zip_code
      t.string      :neighborhood
      t.string      :city
      t.string      :state

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end

