# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150827223958) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parents", force: :cascade do |t|
    t.string   "name",                                             null: false
    t.string   "first_name",                                       null: false
    t.string   "last_name",                                        null: false
    t.string   "second_guardian_first_name"
    t.string   "second_guardian_last_name"
    t.string   "mailing_address"
    t.integer  "phone_number"
    t.string   "email",                                            null: false
    t.integer  "emergency_contact_preference",         default: 0, null: false
    t.boolean  "under_five_bathroom_policy_agreement",             null: false
    t.boolean  "received_policies_pamphlet",                       null: false
    t.text     "notes_on_general_concerns",                        null: false
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

end
