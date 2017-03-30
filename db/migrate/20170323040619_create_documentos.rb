class CreateDocumentos < ActiveRecord::Migration[5.0]
  def change
    create_table :documentos do |t|
      t.string :DOCU_NOMBRE, :null =>false
      t.string :DOCU_RUTA, :null =>false

      t.timestamps
    end
  end
end
