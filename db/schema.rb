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

ActiveRecord::Schema.define(:version => 20130809174047) do

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.string   "population"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "endprefeitura"
    t.string   "endcamara"
    t.date     "fundacao"
    t.string   "nomepadroeiro"
    t.date     "eventopadroeiro"
    t.text     "eventoscidade"
    t.string   "prefeito"
    t.string   "viceprefeito"
    t.text     "vereadores"
    t.string   "presidentepv"
    t.text     "liderancas"
    t.string   "saneamento"
    t.integer  "quantvotosdept"
    t.text     "cincofederais"
    t.text     "cincoestaduais"
    t.integer  "eleitores"
    t.string   "regadministrativa"
    t.string   "vocacaoturistica"
    t.string   "entirelacionamento"
    t.text     "histatuacao"
    t.text     "entianimal"
    t.boolean  "verdeazul"
    t.text     "estrutmeioambiente"
    t.text     "estrutturismo"
    t.text     "estrutcamara"
    t.text     "estrutbemanimal"
  end

  create_table "configurations", :force => true do |t|
    t.integer  "alert"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entities", :force => true do |t|
    t.string   "nome"
    t.datetime "fundacao"
    t.string   "interligada"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "email"
    t.string   "site"
    t.string   "cnpj"
    t.string   "segmento"
    t.string   "presidente"
    t.string   "contato"
    t.boolean  "utilpublica"
    t.text     "histrelacionamento"
    t.boolean  "sedepropria"
    t.text     "estrutura"
    t.text     "condicloes"
    t.boolean  "temveiculos"
    t.integer  "quantveiculos"
    t.text     "condveiculos"
    t.boolean  "verbaestadual"
    t.text     "verbaorgao"
    t.text     "cadastentestaduais"
    t.boolean  "pencadin"
    t.boolean  "prosocial"
    t.boolean  "proativoinativo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "city_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "name",              :limit => 40
    t.string   "authorizable_type", :limit => 40
    t.integer  "authorizable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_sessions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name",                              :null => false
    t.string   "last_name"
    t.string   "email",                             :null => false
    t.string   "crypted_password",                  :null => false
    t.string   "password_salt",                     :null => false
    t.string   "persistence_token",                 :null => false
    t.string   "perishable_token",                  :null => false
    t.integer  "login_count",        :default => 0, :null => false
    t.integer  "failed_login_count", :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
