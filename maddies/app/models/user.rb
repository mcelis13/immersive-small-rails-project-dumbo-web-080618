class User < ApplicationRecord
  has_secure_password
  has_many :products


  def cart
    cart = []
  end


end
