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

ActiveRecord::Schema.define(version: 20160615032512) do

  create_table "ciudads", force: :cascade do |t|
    t.string   "nombreCiudad"
    t.integer  "Departamento_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "ciudads", ["Departamento_id"], name: "index_ciudads_on_Departamento_id"

  create_table "departamentos", force: :cascade do |t|
    t.string   "nombreDepartamento"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "empresa_clientes", force: :cascade do |t|
    t.string   "tipoCedula"
    t.string   "cedula"
    t.string   "fechaNacimiento"
    t.string   "personaNombre"
    t.string   "personaApellido"
    t.string   "personaTelefono"
    t.string   "personaMovil"
    t.string   "personaEmail"
    t.string   "personaDireccion"
    t.string   "nit"
    t.string   "empresaNombre"
    t.string   "empresaDireccion"
    t.string   "empresaTelefono"
    t.string   "empresaEmail"
    t.string   "paginaWeb"
    t.string   "foto"
    t.string   "tipo"
    t.string   "fechaInicio"
    t.string   "fechaFin"
    t.integer  "usuarios_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "empresa_clientes", ["usuarios_id"], name: "index_empresa_clientes_on_usuarios_id"

  create_table "modelo_personalizados", force: :cascade do |t|
    t.string   "colorApariencia"
    t.string   "homeW1"
    t.string   "homeW2"
    t.string   "homeW3"
    t.string   "homeW4"
    t.string   "homeW5"
    t.string   "homeW6"
    t.string   "homeW7"
    t.string   "homeW8"
    t.string   "homeW9"
    t.string   "homeW10"
    t.integer  "usuario_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "modelo_personalizados", ["usuario_id"], name: "index_modelo_personalizados_on_usuario_id"

  create_table "persona_clientes", force: :cascade do |t|
    t.string   "tipoCedula"
    t.string   "cedula"
    t.string   "fechaNacimiento"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "telefono"
    t.string   "movil"
    t.string   "email"
    t.string   "direccion"
    t.string   "foto"
    t.string   "tipo"
    t.string   "fechaInicio"
    t.string   "fechaFin"
    t.integer  "usuarios_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "persona_clientes", ["usuarios_id"], name: "index_persona_clientes_on_usuarios_id"

  create_table "productos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "codigo"
    t.string   "fabricante"
    t.string   "disponibilidad"
    t.integer  "precio"
    t.integer  "cantidad"
    t.string   "descripcion"
    t.integer  "proveedors_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "productos", ["proveedors_id"], name: "index_productos_on_proveedors_id"

  create_table "proveedors", force: :cascade do |t|
    t.string   "tipoCedula"
    t.string   "cedula"
    t.string   "fechaNacimiento"
    t.string   "personaNombre"
    t.string   "personaApellido"
    t.string   "personaTelefono"
    t.string   "personaMovil"
    t.string   "personaEmail"
    t.string   "personaDireccion"
    t.string   "nit"
    t.string   "empresaNombre"
    t.string   "empresaDireccion"
    t.string   "empresaTelefono"
    t.string   "empresaEmail"
    t.string   "paginaWeb"
    t.string   "foto"
    t.string   "cuentaContable"
    t.string   "fechaInicio"
    t.string   "fechaFin"
    t.integer  "usuarios_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "proveedors", ["usuarios_id"], name: "index_proveedors_on_usuarios_id"

  create_table "servicios", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "codigo"
    t.string   "disponibilidad"
    t.integer  "precio"
    t.string   "descripcion"
    t.integer  "usuarios_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "servicios", ["usuarios_id"], name: "index_servicios_on_usuarios_id"

  create_table "table_welcomes", force: :cascade do |t|
    t.string   "nombreEmpresa"
    t.string   "moneda"
    t.string   "logo"
    t.string   "nombreEncargado"
    t.string   "telefonoEncargado"
    t.string   "telEmpresa"
    t.string   "direccionEmpresa"
    t.string   "correoEncargado"
    t.string   "correoEmpresa"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "nombreUsuario"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "rol"
    t.string   "telefono"
    t.string   "movil"
    t.string   "estado"
    t.string   "foto"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

  create_table "welcomes", force: :cascade do |t|
    t.string   "nombreEmpresa"
    t.string   "moneda"
    t.string   "nombreEncargado"
    t.string   "telEncargado"
    t.string   "telEmpresa"
    t.string   "direccionEmpresa"
    t.string   "correoEncargado"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
    t.string   "nit"
  end

end