class AddColumnsMvp2Edits1 < ActiveRecord::Migration
  def up
      remove_column :courses, :course_number
      remove_column :courses, :course_name
      add_column :courses, :name, :string
      add_column :courses, :number, :integer
  end

  def down
  end
end
