class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.boolean :accident
      t.integer :mileage
      t.references :dealership, foreign_key: true
      t.timestamps
    end
  end
end
