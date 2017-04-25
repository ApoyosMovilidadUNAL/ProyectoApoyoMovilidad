class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :stu_name, :null => false
      t.string :stu_email, :null => false
      t.integer :stu_rol, :null => false
      t.integer :stu_identification, :null => false
      t.string :stu_facultad, :null => false
      t.string :stu_carrera, :null => false

      t.timestamps
    end
  end
end
