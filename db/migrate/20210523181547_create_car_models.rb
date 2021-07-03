class CreateCarModels < ActiveRecord::Migration[6.0]
  def change
    create_table :car_models do |t|
      t.references :car, null: false, foreign_key: true
      t.references :car_family, null: false, foreign_key: true

      t.timestamps
    end
  end
end
