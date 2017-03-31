class CreateEstudiantes < ActiveRecord::Migration[5.0]
  def change
    create_table :estudiantes do |t|
      t.string :ESTU_NOMBRE, :null =>false
      t.string :ESTU_EMAIL, :null =>false
      t.integer :ESTU_ROL
      t.integer :ESTU_CEDULA, :null =>false
      t.string :ESTU_FACULTAD, :null =>false
      t.string :ESTU_CARRERA, :null =>false

      t.timestamps
    end
  end
end
