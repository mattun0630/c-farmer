class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.integer :producer_id
      t.text :comment
      t.string :lonlat

      t.timestamps
    end
  end
end
