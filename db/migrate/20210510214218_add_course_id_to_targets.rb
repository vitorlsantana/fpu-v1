class AddCourseIdToTargets < ActiveRecord::Migration[6.1]
  def change
    add_column :targets, :course_id, :integer
  end
end
