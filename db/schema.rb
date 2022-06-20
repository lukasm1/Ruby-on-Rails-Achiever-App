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

ActiveRecord::Schema[7.0].define(version: 2022_06_19_201608) do
  create_table "achiever_book_recommendations", force: :cascade do |t|
    t.integer "achiever_id", null: false
    t.integer "book_recommendation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["achiever_id"], name: "index_achiever_book_recommendations_on_achiever_id"
    t.index ["book_recommendation_id"], name: "index_achiever_book_recommendations_on_book_recommendation_id"
  end

  create_table "achiever_habits", force: :cascade do |t|
    t.integer "achiever_id", null: false
    t.integer "habit_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["achiever_id"], name: "index_achiever_habits_on_achiever_id"
    t.index ["habit_id"], name: "index_achiever_habits_on_habit_id"
  end

  create_table "achievers", force: :cascade do |t|
    t.string "name"
    t.string "area_of_expertise"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_achievers_on_user_id"
  end

  create_table "book_recommendations", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_book_recommendations_on_user_id"
  end

  create_table "habits", force: :cascade do |t|
    t.string "name"
    t.string "frequency"
    t.string "time_demand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_habits_on_user_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.string "text"
    t.integer "achiever_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["achiever_id"], name: "index_quotes_on_achiever_id"
    t.index ["user_id"], name: "index_quotes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "achiever_book_recommendations", "achievers"
  add_foreign_key "achiever_book_recommendations", "book_recommendations"
  add_foreign_key "achiever_habits", "achievers"
  add_foreign_key "achiever_habits", "habits"
  add_foreign_key "quotes", "achievers"
end
