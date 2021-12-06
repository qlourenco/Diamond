# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_06_084236) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "vinyl_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_favorites_on_user_id"
    t.index ["vinyl_id"], name: "index_favorites_on_vinyl_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "suggestions", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.string "title"
    t.string "position"
    t.string "sample"
    t.integer "milliseconds"
    t.bigint "vinyl_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vinyl_id"], name: "index_tracks_on_vinyl_id"
  end

  create_table "user_vinyls", force: :cascade do |t|
    t.bigint "vinyl_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_vinyls_on_user_id"
    t.index ["vinyl_id"], name: "index_user_vinyls_on_vinyl_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vinyl_tags", force: :cascade do |t|
    t.bigint "tag_id", null: false
    t.bigint "user_vinyl_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tag_id"], name: "index_vinyl_tags_on_tag_id"
    t.index ["user_vinyl_id"], name: "index_vinyl_tags_on_user_vinyl_id"
  end

  create_table "vinyls", force: :cascade do |t|
    t.bigint "genre_id", null: false
    t.bigint "artist_id", null: false
    t.string "title"
    t.string "release_date"
    t.string "discogs_id"
    t.string "stars"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "cover_url"
    t.index ["artist_id"], name: "index_vinyls_on_artist_id"
    t.index ["genre_id"], name: "index_vinyls_on_genre_id"
  end

  add_foreign_key "favorites", "users"
  add_foreign_key "favorites", "vinyls"
  add_foreign_key "tracks", "vinyls"
  add_foreign_key "user_vinyls", "users"
  add_foreign_key "user_vinyls", "vinyls"
  add_foreign_key "vinyl_tags", "tags"
  add_foreign_key "vinyl_tags", "user_vinyls"
  add_foreign_key "vinyls", "artists"
  add_foreign_key "vinyls", "genres"
end
