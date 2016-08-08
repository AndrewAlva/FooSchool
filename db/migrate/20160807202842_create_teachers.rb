class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.integer :person_id

      t.timestamps
    end
    add_index :teachers, :person_id
  end
end
