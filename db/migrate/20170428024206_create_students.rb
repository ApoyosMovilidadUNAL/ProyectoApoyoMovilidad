class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.integer :rol
      t.integer :identification
      t.string :faculty
      t.string :career

      t.timestamps
    end
  end
end
