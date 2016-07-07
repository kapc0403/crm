class CreateEmpresaclientes < ActiveRecord::Migration
  def change
    create_table :empresaclientes do |t|
      t.string :tipoCedula
      t.date :fechaNacimiento
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
      t.attachment :foto
      t.string :tipo
      t.date :fechaInicio
      t.date :fechaFin
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
