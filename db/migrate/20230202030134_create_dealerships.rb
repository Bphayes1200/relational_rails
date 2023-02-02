class CreateDealerships < ActiveRecord::Migration[5.2]
  def change
    create_table :dealerships do |t|
      t.string :name
      t.string :city
      t.integer :rank
      t.boolean :service_shop
      
      t.timestamps
    end
  end
end
