class AddRgbaToColors < ActiveRecord::Migration[7.2]
  def change
    add_column :colors, :r, :integer
    add_column :colors, :g, :integer
    add_column :colors, :b, :integer
    add_column :colors, :a, :integer
  end
end
