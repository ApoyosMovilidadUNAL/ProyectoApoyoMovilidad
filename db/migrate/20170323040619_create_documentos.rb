class CreateDocumentos < ActiveRecord::Migration[5.0]
  def change
    create_table :documentos do |t|
      t.string :DOCU_NOMBRE
      t.string :DOCU_RUTA

      t.timestamps
    end
  end
end
