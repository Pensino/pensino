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

ActiveRecord::Schema.define(:version => 20110531045944) do

  create_table "addresses", :force => true do |t|
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.string   "name"
    t.string   "number"
    t.string   "complement"
    t.string   "zip_code"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.integer  "steps"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "document"
    t.integer  "registration"
    t.boolean  "coordinator"
    t.boolean  "professor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrollments", :force => true do |t|
    t.integer  "time_table_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expedient_time_tables", :force => true do |t|
    t.integer  "expedient_id"
    t.integer  "time_table_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expedients", :force => true do |t|
    t.string   "day"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "quantity_lessons"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grids", :force => true do |t|
    t.integer  "course_id"
    t.integer  "matter_id"
    t.integer  "step"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lessons", :force => true do |t|
    t.integer  "expedient_time_table_id"
    t.date     "date_lesson"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "quantity_lessons"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matters", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "quantity_lessons"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registrations", :force => true do |t|
    t.integer  "course_id"
    t.integer  "student_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "document"
    t.integer  "registration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_tables", :force => true do |t|
    t.integer  "grid_id"
    t.integer  "employee_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
