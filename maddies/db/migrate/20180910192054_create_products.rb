class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :user_id
      t.integer :seller_id
      t.string :img_url

      t.timestamps
    end
  end
end
