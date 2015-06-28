class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.belongs_to :course
      t.belongs_to :course_type
      t.timestamps null: false
    end
  end
end
