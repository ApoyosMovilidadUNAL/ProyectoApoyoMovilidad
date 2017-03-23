class CreateProfesores < ActiveRecord::Migration[5.0]
  def change
    create_table :profesores do |t|
      t.string :PROFE_NOMBRE
      t.string :PROFE_PASS
      t.string :PROFE_EMAIL
      t.integer :PROFE_ROL

      t.timestamps
    end
  end
end
