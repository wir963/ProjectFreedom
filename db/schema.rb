# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120524220610) do

  create_table "admin_users", :force => true do |t|
    t.string   "hashed_password"
    t.string   "user_name"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "salt",            :limit => 40
  end

  create_table "course_evaluations", :force => true do |t|
    t.integer  "professor_id"
    t.integer  "course_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.float    "overall_cross_rating"
  end

  add_index "course_evaluations", ["professor_id", "course_id"], :name => "index_course_evaluations_on_professor_id_and_course_id"

  create_table "courses", :force => true do |t|
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "department"
    t.integer  "credits"
    t.integer  "best_professor"
    t.string   "name"
    t.integer  "number"
  end

  create_table "individual_evaluations", :force => true do |t|
    t.integer  "professor_id"
    t.integer  "course_id"
    t.integer  "course_evaluation_id"
    t.string   "user_name"
    t.string   "comment"
    t.float    "rating"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "course"
    t.string   "professor"
  end

  add_index "individual_evaluations", ["course_evaluation_id"], :name => "index_individual_evaluations_on_course_evaluation_id"

  create_table "professors", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name",      :limit => 50
    t.float    "overall_rating"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "prefix"
  end

end
