class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.belongs_to :learner
      t.belongs_to :course
      t.timestamps null: false
    end
  end
end
