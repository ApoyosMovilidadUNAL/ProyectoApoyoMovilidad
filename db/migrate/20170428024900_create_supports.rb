class CreateSupports < ActiveRecord::Migration[5.0]
  def change
    create_table :supports do |t|
      t.string :name
      t.string :route
      t.references :request, foreign_key: true

      t.timestamps
    end
  end
end
