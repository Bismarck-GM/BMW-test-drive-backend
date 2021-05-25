class CreateDrives < ActiveRecord::Migration[6.0]
  def change
    create_table :drives do |t|
      t.string :name
      t.string :shorthand

      t.timestamps
    end
  end
end
