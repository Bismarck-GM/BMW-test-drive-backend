class CreatePaints < ActiveRecord::Migration[6.0]
  def change
    create_table :paints do |t|
      t.string :name
      t.string :code
      t.string :rgb
      t.integer :price_mod

      t.timestamps
    end
  end
end
