class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :product_image
      t.text :detail
      t.integer :user_id
      t.integer :tag_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
