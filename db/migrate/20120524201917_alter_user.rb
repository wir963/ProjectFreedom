class AlterUser < ActiveRecord::Migration
  def up
    rename_column("admin_users", "password", "hashed_password")
  end

  def down
  end
end
