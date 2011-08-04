class CreateFingerprints < ActiveRecord::Migration
  def self.up
    create_table :fingerprints do |t|

      t.integer :id
      t.binary  :fingerprint_data

      t.timestamps
    end

  end

  def self.down
    drop_table :fingerprints
  end
end

