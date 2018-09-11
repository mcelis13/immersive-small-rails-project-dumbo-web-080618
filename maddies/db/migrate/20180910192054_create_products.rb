class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :img_url
      t.integer :user_id

      t.timestamps
    end
  end
end
