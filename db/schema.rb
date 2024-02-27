# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_02_27_024820) do
  create_table "jars", force: :cascade do |t|
    t.string "display_name"
    t.string "description"
    t.string "submission_time"
    t.string "design_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_jars_on_user_id"
  end

  create_table "jars_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "jar_id", null: false
    t.index ["jar_id"], name: "index_jars_users_on_jar_id"
    t.index ["user_id"], name: "index_jars_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_hash"
    t.string "display_name"
    t.date "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "jars", "users"
end
