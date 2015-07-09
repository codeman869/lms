class RemoveEndFromCourseTypes < ActiveRecord::Migration
  def change
    remove_column :course_types, :end, :date
  end
end
