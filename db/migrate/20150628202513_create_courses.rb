class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.datetime :start
      t.datetime :end
      t.belongs_to :course_type
      t.timestamps null: false
    end
  end
end
