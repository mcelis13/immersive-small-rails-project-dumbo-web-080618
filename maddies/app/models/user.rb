class User < ApplicationRecord
  has_secure_password
  has_many :products
  has_many :sellers, through: :products


  def cart
    cart = []
  end

end
