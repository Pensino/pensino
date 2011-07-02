class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|

      t.integer     :userable_id
      t.string      :userable_type

      t.string      :email
      t.string      :login
      t.string      :password

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end

