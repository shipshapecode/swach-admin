class CreatePalettes < ActiveRecord::Migration[7.2]
  def change
    create_table :palettes do |t|
      t.string :name
      t.integer :index
      t.boolean :is_color_history, default: false
      t.boolean :is_favorite, default: false
      t.boolean :is_locked, default: false
      t.integer :selected_color_index

      t.timestamps
    end
  end
end
