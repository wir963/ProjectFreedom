class AlterUsers2 < ActiveRecord::Migration
  def up
        add_column("admin_users", "salt", :string, :limit => 40)
  end

  def down
  end
end
