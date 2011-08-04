class CreateStudentFingerprintJoinTable < ActiveRecord::Migration
  def self.up
    create_table :students_fingerprints, :id => false do |t|
      t.integer :student_id
      t.integer :fingerprint_id
    end
  end

  def self.down
    drop_table :students_fingerprints
  end
end

