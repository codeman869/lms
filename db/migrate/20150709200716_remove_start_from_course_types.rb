class RemoveStartFromCourseTypes < ActiveRecord::Migration
  def change
    remove_column :course_types, :start, :date
  end
end
