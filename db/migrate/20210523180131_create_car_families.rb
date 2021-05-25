class CreateCarFamilies < ActiveRecord::Migration[6.0]
  def change
    create_table :car_families do |t|
      t.string :name
      t.string :description
      t.string :img_thumb

      t.timestamps
    end
  end
end
