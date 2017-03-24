class CreateSolicitudes < ActiveRecord::Migration[5.0]
  def change
    create_table :solicitudes do |t|
      t.integer :SOLI_ESTADO
      t.references :documentos, foreign_key: true
      t.references :soportes, foreign_key: true
      t.references :estudiantes, foreign_key: true
      t.references :profesores, foreign_key: true

      t.timestamps
    end
  end
end
