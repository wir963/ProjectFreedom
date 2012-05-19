class CreateCourseEvaluations < ActiveRecord::Migration
  def change
    create_table :course_evaluations do |t|
        t.references :professor
        t.references :course 
        t.integer "overall_rating"
        t.string "tag"

      t.timestamps
    end
      add_index :course_evaluations, ['professor_id', 'course_id']
  end
end
