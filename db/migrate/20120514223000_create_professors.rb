class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
        #id is a default column for a table
        t.string "first_name"
        t.string "last_name", :limit => 50
        t.float "overall_rating"

        t.timestamps
    end
  end
end
