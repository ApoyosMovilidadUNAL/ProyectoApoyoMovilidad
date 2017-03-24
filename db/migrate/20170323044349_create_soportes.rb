class CreateSoportes < ActiveRecord::Migration[5.0]
  def change
    create_table :soportes do |t|
      t.string :SOPOR_NOMBRE
      t.string :SOPOR_RUTA

      t.timestamps
    end
  end
end
