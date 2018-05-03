class RemoveStudentNameFromCohorts < ActiveRecord::Migration[5.2]
  def change
    remove_column :cohorts, :student_name, :string
  end
end
