class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :userID
      t.string :coursename
      t.integer :progress
      t.integer :score

      t.timestamps
    end
  end
end
