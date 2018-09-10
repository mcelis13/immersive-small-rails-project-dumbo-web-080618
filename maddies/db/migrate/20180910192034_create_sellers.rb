class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :address
      t.string :email
      t.integer :bank_account
      t.string :img_url
      t.string :password_digest
      t.string :user_name

      t.timestamps
    end
  end
end
