class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.string "password"
      t.string "user_name"

      t.timestamps
    end
  end
end
