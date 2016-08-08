class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.references :student, foreign_key: true
      t.references :group, foreign_key: true

      t.timestamps
    end
    add_index :schedules, [:student_id, :group_id], unique: true
  end
end
