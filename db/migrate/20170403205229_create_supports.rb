class CreateSupports < ActiveRecord::Migration[5.0]
  def change
    create_table :supports do |t|
      t.string :sup_name, :null => false
      t.string :sup_ruta, :null => false

      t.timestamps
    end
  end
end
