class AddShortNameToCarFamily < ActiveRecord::Migration[6.0]
  def change
    add_column :car_families, :shortname, :string
  end
end
