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

ActiveRecord::Schema.define(version: 20150417043618) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "dm_clinica_especialidades", force: :cascade do |t|
    t.integer  "dm_clinicas",          limit: 4
    t.integer  "dm_especialidades_id", limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "dm_clinicas", force: :cascade do |t|
    t.string   "nome",                 limit: 255,                                             null: false
    t.text     "endereco",             limit: 65535,                                           null: false
    t.string   "bairro",               limit: 255,                                             null: false
    t.string   "cep",                  limit: 9
    t.string   "cidade",               limit: 255,                                             null: false
    t.string   "estado",               limit: 2,                                               null: false
    t.string   "telefone",             limit: 17
    t.string   "logotipo",             limit: 255
    t.decimal  "latitude",                           precision: 15, scale: 13, default: 0.0
    t.decimal  "longitude",                          precision: 15, scale: 13, default: 0.0
    t.datetime "inicio_atendimento",                                                           null: false
    t.datetime "terminio_atendimento",                                                         null: false
    t.boolean  "ativo",                limit: 1,                               default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "requisicao",           limit: 4,                               default: 0
  end

  create_table "dm_dentista_especialidades", force: :cascade do |t|
    t.integer  "dm_dentistum_id",      limit: 4
    t.integer  "dm_especialidades_id", limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "dm_dentistas", force: :cascade do |t|
    t.string   "nome",                 limit: 255,                                             null: false
    t.text     "endereco",             limit: 65535,                                           null: false
    t.string   "bairro",               limit: 255,                                             null: false
    t.string   "cep",                  limit: 9
    t.string   "cidade",               limit: 255,                                             null: false
    t.string   "estado",               limit: 2,                                               null: false
    t.string   "cro",                  limit: 255,                                             null: false
    t.string   "telefone",             limit: 17
    t.string   "logotipo",             limit: 255
    t.decimal  "latitude",                           precision: 15, scale: 13, default: 0.0
    t.decimal  "longitude",                          precision: 15, scale: 13, default: 0.0
    t.datetime "inicio_atendimento",                                                           null: false
    t.datetime "terminio_atendimento",                                                         null: false
    t.boolean  "ativo",                limit: 1,                               default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "requisicao",           limit: 4,                               default: 0
  end

  add_index "dm_dentistas", ["cro"], name: "index_dm_dentistas_on_cro", unique: true, using: :btree

  create_table "dm_especialidades", force: :cascade do |t|
    t.string   "especialidade", limit: 255,             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "requisicao",    limit: 4,   default: 0
  end

  add_index "dm_especialidades", ["especialidade"], name: "index_dm_especialidades_on_especialidade", unique: true, using: :btree

  create_table "dm_medico_especialidades", force: :cascade do |t|
    t.integer  "dm_medicos_id",        limit: 4
    t.integer  "dm_especialidades_id", limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "dm_medicos", force: :cascade do |t|
    t.string   "nome",                 limit: 255,                                             null: false
    t.text     "endereco",             limit: 65535,                                           null: false
    t.string   "bairro",               limit: 255,                                             null: false
    t.string   "cep",                  limit: 9
    t.string   "cidade",               limit: 255,                                             null: false
    t.string   "estado",               limit: 2,                                               null: false
    t.string   "crm",                  limit: 255,                                             null: false
    t.string   "telefone",             limit: 17
    t.string   "logotipo",             limit: 255
    t.decimal  "latitude",                           precision: 15, scale: 13, default: 0.0
    t.decimal  "longitude",                          precision: 15, scale: 13, default: 0.0
    t.datetime "inicio_atendimento",                                                           null: false
    t.datetime "terminio_atendimento",                                                         null: false
    t.boolean  "ativo",                limit: 1,                               default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "requisicao",           limit: 4,                               default: 0
  end

  add_index "dm_medicos", ["crm"], name: "index_dm_medicos_on_crm", unique: true, using: :btree

  create_table "dm_planosaudes", force: :cascade do |t|
    t.string   "nome",       limit: 255,             null: false
    t.string   "tipo",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "requisicao", limit: 4,   default: 0
  end

end
