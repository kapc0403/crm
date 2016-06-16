class CreatePersonaClientes < ActiveRecord::Migration
  def change
    create_table :persona_clientes do |t|
      t.string :tipoCedula
      t.string :cedula
      t.string :fechaNacimiento
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.string :movil
      t.string :email
      t.string :direccion
      t.string :foto
      t.string :tipo
      t.string :fechaInicio
      t.string :fechaFin
      t.references :usuarios, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
