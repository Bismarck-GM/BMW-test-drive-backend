class CreatePropulsors < ActiveRecord::Migration[6.0]
  def change
    create_table :propulsors do |t|
      t.string :name
      t.string :energy

      t.timestamps
    end
  end
end
