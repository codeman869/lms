class AddIsActiveToCourseTypes < ActiveRecord::Migration
  def change
    add_column :course_types, :is_active, :boolean
  end
end
