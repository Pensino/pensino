class CreateEmployeeFingerprintJoinTable < ActiveRecord::Migration
  def self.up
    create_table :employees_fingerprints, :id => false do |t|
      t.integer :employee_id
      t.integer :fingerprint_id
    end
  end

  def self.down
    drop_table :employees_fingerprints
  end
end

