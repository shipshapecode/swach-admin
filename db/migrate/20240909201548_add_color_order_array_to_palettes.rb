class AddColorOrderArrayToPalettes < ActiveRecord::Migration[7.2]
  def change
    add_column :palettes, :color_order, :json, default: []
  end
end
