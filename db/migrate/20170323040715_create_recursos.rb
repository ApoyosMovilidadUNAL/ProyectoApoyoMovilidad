class CreateRecursos < ActiveRecord::Migration[5.0]
  def change
    create_table :recursos do |t|
      t.string :RECU_NOMBRE
      t.string :RECU_RUTA

      t.timestamps
    end
  end
end
