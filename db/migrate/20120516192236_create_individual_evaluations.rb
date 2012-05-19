class CreateIndividualEvaluations < ActiveRecord::Migration
  def change
    create_table :individual_evaluations do |t|
      t.references :professor
      t.references :course
      t.references :course_evaluation
      t.string "user_name"
      t.string "comment"
      t.float "rating"
      t.timestamps
    end
    add_index :individual_evaluations, ['course_evaluation_id']
  end
end
