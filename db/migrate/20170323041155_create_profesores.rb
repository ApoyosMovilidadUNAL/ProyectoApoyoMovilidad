class CreateProfesores < ActiveRecord::Migration[5.0]
  def change
    create_table :profesores do |t|
      t.string :PROFE_NOMBRE, :null =>false
      t.string :PROFE_PASS, :null =>false
      t.string :PROFE_EMAIL, :null =>false
      t.integer :PROFE_ROL

      t.timestamps
    end
  end
end
