class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.integer :state
      t.text :description
      t.integer :amount
      t.string :place
      t.integer :type_req
      t.references :student, foreign_key: true
      t.references :professor, foreign_key: true

      t.timestamps
    end
  end
end
