class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :code
      t.integer :model_year
      t.integer :hp
      t.integer :mpg
      t.float :accel
      t.integer :msrp
      t.string :img_thumb

      t.timestamps
    end
  end
end
