class IndividualEvaluationsAddColumns < ActiveRecord::Migration
  def up
    add_column :individual_evaluations, :course, :string
    add_column :individual_evaluations, :professor, :string
  end

  def down
  end
end
