class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :email
      t.integer :credit_card
      t.string :password_digest
      t.string :user_name
      t.string :seller
      t.timestamps
    end
  end
end