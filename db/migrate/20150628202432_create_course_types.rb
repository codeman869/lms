class CreateCourseTypes < ActiveRecord::Migration
  def change
    create_table :course_types do |t|
      t.string :name
      t.text :description
      t.date :start
      t.date :end
      t.timestamps null: false
    end
  end
end
