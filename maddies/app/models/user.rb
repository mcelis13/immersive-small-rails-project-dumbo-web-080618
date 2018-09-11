class User < ApplicationRecord

  has_secure_password
  has_many :products

  validates :name, presence: true
  validates :name, length: {maximum: 15, message: "Name is too long."}

  validates :user_name, presence: true
  validates :user_name, length: {maximum: 15, message: "User name is too long."}

  validates :address, presence: true
  validates :address, length: {maximum: 50, message: "Address is too long."}

  validates :email, presence: true
  #validates :email, uniqueness: true, on: :account_setup
  validates :email, length: {maximum: 50, message: "Email address is too long."}

  validates :credit_card, presence: true
  validates :credit_card, numericality: { only_integer: true}
  validates :credit_card, length: { is: 16, message: "Invalid credit card number"}


  def new_cart
    cart = []
  end

  def add_to_cart(product)
  end

  def delete_cart
  end


end
