class AddCourseIdToInscricaos < ActiveRecord::Migration[6.1]
  def change
    add_column :inscricaos, :course_id, :integer
  end
end
