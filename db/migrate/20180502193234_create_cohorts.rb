class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.string :start_date
      t.string :end_date
      t.string :instructor_name
      t.string :student_name

      t.timestamps
    end
  end
end
