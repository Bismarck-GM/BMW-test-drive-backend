class CreateDealerships < ActiveRecord::Migration[6.0]
  def change
    create_table :dealerships do |t|
      t.string :name
      t.string :country
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end
