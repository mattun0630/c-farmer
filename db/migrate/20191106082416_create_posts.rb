class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :producer_id
      t.string :item
      t.string :title
      t.text :description
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
