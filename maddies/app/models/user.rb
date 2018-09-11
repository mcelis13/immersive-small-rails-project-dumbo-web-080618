class User < ApplicationRecord

  has_secure_password
  has_many :products

  validates :first_name, presence: true
  validates :first_name, length: {maximum: 10, message: "First name is too long."}

  validates :last_name, presence: true
  validates :last_name, length: {maximum: 15, message: "Last name is too long."}

  validates :user_name, presence: true
  validates :user_name, uniqueness: true
  validates :user_name, length: {maximum: 15, message: "User name is too long."}

  validates :address, presence: true
  validates :address, length: {maximum: 50, message: "Address is too long."}

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, length: {maximum: 50, message: "Email address is too long."}

  validates :credit_card, presence: true
  validates :credit_card, length: { minimum: 16, message: "Invalid credit card number"}

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def add_cart
    sum = 0;
#want to byebug to actually see what is happening here
    current_cart.each do |productObj|
        sum += productObj.price * productObj.quantity
    end

    sum
  end

end
