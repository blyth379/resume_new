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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_12_12_183102) do

  create_table "companies", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.text "company_name"
    t.string "employees_number"
    t.string "capital"
    t.string "working_country"
    t.string "company_pic"
    t.text "business_contents"
    t.text "hp_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_companies_on_email", unique: true
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true
  end

  create_table "company_countries", force: :cascade do |t|
    t.integer "company_id"
    t.integer "country_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_countries_on_company_id"
    t.index ["country_list_id"], name: "index_company_countries_on_country_list_id"
  end

  create_table "company_industries", force: :cascade do |t|
    t.integer "company_id"
    t.integer "industry_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_industries_on_company_id"
    t.index ["industry_list_id"], name: "index_company_industries_on_industry_list_id"
  end

  create_table "company_job_categories", force: :cascade do |t|
    t.integer "company_id"
    t.integer "job_category_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_job_categories_on_company_id"
    t.index ["job_category_list_id"], name: "index_company_job_categories_on_job_category_list_id"
  end

  create_table "country_lists", force: :cascade do |t|
    t.string "country"
    t.string "country_jp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string "education_type"
    t.string "school_name"
    t.date "enroll_in"
    t.date "graduate_in"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_educations_on_user_id"
  end

  create_table "industry_lists", force: :cascade do |t|
    t.string "industry"
    t.string "industry_jp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_category_lists", force: :cascade do |t|
    t.string "job_category"
    t.string "job_category_jp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lang_lists", force: :cascade do |t|
    t.string "lang"
    t.string "lang_jp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "langs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "lang_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lang_list_id"], name: "index_langs_on_lang_list_id"
    t.index ["user_id"], name: "index_langs_on_user_id"
  end

  create_table "user_countries", force: :cascade do |t|
    t.integer "user_id"
    t.integer "country_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_list_id"], name: "index_user_countries_on_country_list_id"
    t.index ["user_id"], name: "index_user_countries_on_user_id"
  end

  create_table "user_industries", force: :cascade do |t|
    t.integer "user_id"
    t.integer "industry_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["industry_list_id"], name: "index_user_industries_on_industry_list_id"
    t.index ["user_id"], name: "index_user_industries_on_user_id"
  end

  create_table "user_job_categories", force: :cascade do |t|
    t.integer "user_id"
    t.integer "job_category_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_category_list_id"], name: "index_user_job_categories_on_job_category_list_id"
    t.index ["user_id"], name: "index_user_job_categories_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "family_name"
    t.string "middle_name"
    t.string "gender"
    t.string "nationality"
    t.string "residence_country"
    t.text "hobby"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
