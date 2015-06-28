class CreateCourseTypes < ActiveRecord::Migration
  def change
    create_table :course_types do |t|
      t.string :name
      t.text :description
      t.datetime :beginDate
      t.datetime :endDate
      t.reference :course
      t.timestamps null: false
    end
  end
end
