class CreateEstudiantes < ActiveRecord::Migration[5.0]
  def change
    create_table :estudiantes do |t|
      t.string :ESTU_NOMBRE
      t.string :ESTU_EMAIL
      t.integer :ESTU_ROL
      t.integer :ESTU_CEDULA
      t.string :ESTU_FACULTAD
      t.string :ESTU_CARRERA

      t.timestamps
    end
  end
end
