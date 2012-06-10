class AddColumns < ActiveRecord::Migration
  def up
      add_column :courses, :department, :string
      add_column :courses, :course_number, :integer
      add_column :courses, :course_name, :string
      add_column :courses, :credits, :integer
  end

  def down
  end
end
