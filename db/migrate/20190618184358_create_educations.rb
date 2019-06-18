class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.integer :student_id
      t.datetime :start_date
      t.datetime :end_date
      t.string :degree
      t.string :schooling
      t.text :details

      t.timestamps
    end
  end
end
