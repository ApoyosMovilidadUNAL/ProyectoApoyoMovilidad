class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.integer :req_estado, :null => false
      t.text :req_descripcion, :null => false
      t.references :student, foreign_key: true
      t.references :professor, foreign_key: true
      t.references :document, foreign_key: true
      t.references :support, foreign_key: true

      t.timestamps
    end
  end
end
