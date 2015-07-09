class AddDeactivatedToCourseTypes < ActiveRecord::Migration
  def change
    add_column :course_types, :deactivated, :datetime
  end
end
