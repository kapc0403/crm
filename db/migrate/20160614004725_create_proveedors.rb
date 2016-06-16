class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors do |t|
      t.string :tipoCedula
      t.string :cedula
      t.string :fechaNacimiento
      t.string :personaNombre
      t.string :personaApellido
      t.string :personaTelefono
      t.string :personaMovil
      t.string :personaEmail
      t.string :personaDireccion
      t.string :nit
      t.string :empresaNombre
      t.string :empresaDireccion
      t.string :empresaTelefono
      t.string :empresaEmail
      t.string :paginaWeb
      t.string :foto
      t.string :cuentaContable
      t.string :fechaInicio
      t.string :fechaFin
      t.references :usuarios, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
