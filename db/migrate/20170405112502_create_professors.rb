class CreateProfessors < ActiveRecord::Migration[5.0]
  def change
    create_table :professors do |t|
      t.string :pro_name, :null => false
      t.string :pro_email, :null => false
      t.integer :pro_rol, :null => false

      t.timestamps
    end
  end
end
