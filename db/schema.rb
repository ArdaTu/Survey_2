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

ActiveRecord::Schema[7.0].define(version: 2022_03_27_182605) do
  create_table "feedbacks", id: false, force: :cascade do |t|
    t.integer "id"
    t.integer "survey_id"
    t.integer "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_feedbacks_on_question_id"
  end

  create_table "options", id: false, force: :cascade do |t|
    t.integer "id"
    t.text "title"
    t.integer "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_options_on_question_id"
  end

  create_table "questions", id: false, force: :cascade do |t|
    t.integer "id"
    t.text "title"
    t.integer "type"
    t.integer "survey_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["survey_id"], name: "index_questions_on_survey_id"
  end

  create_table "responses", id: false, force: :cascade do |t|
    t.integer "id"
    t.text "body"
    t.integer "feedback_id"
    t.integer "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_responses_on_question_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "feedbacks", "questions"
  add_foreign_key "options", "questions"
  add_foreign_key "questions", "surveys"
  add_foreign_key "responses", "questions"
end