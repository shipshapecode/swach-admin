class CreateColors < ActiveRecord::Migration[7.2]
  def change
    create_table :colors do |t|
      t.string :name
      t.references :palette, null: false, foreign_key: true

      t.timestamps
    end
  end
end
