class CreateSoportes < ActiveRecord::Migration[5.0]
  def change
    create_table :soportes do |t|
      t.string :SOPOR_NOMBRE, :null =>false
      t.string :SOPOR_RUTA, :null =>false

      t.timestamps
    end
  end
end
