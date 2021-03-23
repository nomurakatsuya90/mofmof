class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :train
      t.integer :minute
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
