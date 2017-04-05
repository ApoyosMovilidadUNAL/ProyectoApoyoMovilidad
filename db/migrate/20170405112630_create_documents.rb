class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :docu_name, :null => false
      t.string :docu_ruta, :null => false

      t.timestamps
    end
  end
end
