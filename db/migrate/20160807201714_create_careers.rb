class CreateCareers < ActiveRecord::Migration[5.0]
  def change
    create_table :careers do |t|
      t.string :name
      t.references :faculty, foreign_key: true

      t.timestamps
    end
  end
end
