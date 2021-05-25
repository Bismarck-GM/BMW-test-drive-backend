class CreateCarPropulsors < ActiveRecord::Migration[6.0]
  def change
    create_table :car_propulsors do |t|
      t.references :car, null: false, foreign_key: true
      t.references :propulsor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
