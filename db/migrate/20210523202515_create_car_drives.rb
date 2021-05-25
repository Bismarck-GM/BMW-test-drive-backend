class CreateCarDrives < ActiveRecord::Migration[6.0]
  def change
    create_table :car_drives do |t|
      t.references :car, null: false, foreign_key: true
      t.references :drive, null: false, foreign_key: true

      t.timestamps
    end
  end
end
