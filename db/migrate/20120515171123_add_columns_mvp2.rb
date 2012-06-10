class AddColumnsMvp2 < ActiveRecord::Migration
  def up
      add_column :courses, :best_professor, :integer
      add_column :professors, :prefix, :string
      remove_column :course_evaluations, :tag
      remove_column :course_evaluations, :overall_rating
      add_column :course_evaluations, :overall_cross_rating, :float
  end

  def down
  end
end
