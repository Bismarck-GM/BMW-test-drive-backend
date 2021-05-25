class CreateCarPaints < ActiveRecord::Migration[6.0]
  def change
    create_table :car_paints do |t|
      t.references :car, null: false, foreign_key: true
      t.references :paint, null: false, foreign_key: true

      t.timestamps
    end
  end
end
