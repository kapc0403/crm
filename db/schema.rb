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

ActiveRecord::Schema.define(version: 20160725140511) do

  create_table "acceso_rapidos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "icon"
  end

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

  create_table "detalle_facturas", force: :cascade do |t|
    t.integer  "factura_id"
    t.integer  "cantidad"
    t.string   "total"
    t.string   "descuento"
    t.integer  "producto_id"
    t.integer  "servicio_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "detalle_facturas", ["factura_id"], name: "index_detalle_facturas_on_factura_id"
  add_index "detalle_facturas", ["producto_id"], name: "index_detalle_facturas_on_producto_id"
  add_index "detalle_facturas", ["servicio_id"], name: "index_detalle_facturas_on_servicio_id"

  create_table "empresaclientes", force: :cascade do |t|
    t.string   "numidentificacion"
    t.date     "fechaNacimiento"
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
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
    t.string   "tipo"
    t.date     "fechaInicio"
    t.date     "fechaFin"
    t.integer  "usuario_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "empresaclientes", ["usuario_id"], name: "index_empresaclientes_on_usuario_id"

  create_table "estadofacturas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facturas", force: :cascade do |t|
    t.date     "fecha"
    t.date     "fechafin"
    t.string   "ordencompra"
    t.string   "condiciones"
    t.integer  "usuario_id"
    t.integer  "empresacliente_id"
    t.integer  "personacliente_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "estadofactura_id"
  end

  add_index "facturas", ["empresacliente_id"], name: "index_facturas_on_empresacliente_id"
  add_index "facturas", ["estadofactura_id"], name: "index_facturas_on_estadofactura_id"
  add_index "facturas", ["personacliente_id"], name: "index_facturas_on_personacliente_id"
  add_index "facturas", ["usuario_id"], name: "index_facturas_on_usuario_id"

  create_table "menu_rapidos", force: :cascade do |t|
    t.integer  "usuario_id"
    t.string   "accesor1"
    t.string   "accesor2"
    t.string   "accesor3"
    t.string   "accesor4"
    t.string   "accesor5"
    t.string   "acceso6"
    t.string   "accesor7"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "menu_rapidos", ["usuario_id"], name: "index_menu_rapidos_on_usuario_id"

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
    t.integer  "usuarios_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.date     "fechaNacimiento"
    t.date     "fechaInicio"
    t.date     "fechaFin"
  end

  add_index "proveedors", ["usuarios_id"], name: "index_proveedors_on_usuarios_id"

  create_table "seguimientos", force: :cascade do |t|
    t.integer  "empresacliente_id"
    t.integer  "tiposeguimiento_id"
    t.text     "descripcion"
    t.integer  "usuario_id"
    t.datetime "fecha"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "seguimientos", ["empresacliente_id"], name: "index_seguimientos_on_empresacliente_id"
  add_index "seguimientos", ["tiposeguimiento_id"], name: "index_seguimientos_on_tiposeguimiento_id"
  add_index "seguimientos", ["usuario_id"], name: "index_seguimientos_on_usuario_id"

  create_table "servicios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "codigo"
    t.string   "disponibilidad"
    t.string   "precio"
    t.string   "descripción"
    t.integer  "usuario_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "servicios", ["usuario_id"], name: "index_servicios_on_usuario_id"

  create_table "tareas", force: :cascade do |t|
    t.string   "asunto"
    t.string   "estado"
    t.string   "prioridad"
    t.string   "descripcion"
    t.date     "fechaInicio"
    t.date     "fechaFin"
    t.integer  "usuarios_id"
    t.integer  "empresaclientes_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "tareas", ["empresaclientes_id"], name: "index_tareas_on_empresaclientes_id"
  add_index "tareas", ["usuarios_id"], name: "index_tareas_on_usuarios_id"

  create_table "tiposeguimientos", force: :cascade do |t|
    t.string   "nombre"
    t.boolean  "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
    t.string   "estado"
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
    t.string   "prefijoconsecutivo"
    t.integer  "sufijoconsecutivo"
  end

  create_table "widgets", force: :cascade do |t|
    t.integer  "usuario_id"
    t.string   "w1"
    t.string   "w2"
    t.string   "w3"
    t.string   "w4"
    t.string   "w5"
    t.string   "w6"
    t.string   "w7"
    t.string   "w8"
    t.string   "w9"
    t.string   "w10"
    t.string   "w11"
    t.string   "w12"
    t.string   "colorlayout"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "widgets", ["usuario_id"], name: "index_widgets_on_usuario_id"

end
