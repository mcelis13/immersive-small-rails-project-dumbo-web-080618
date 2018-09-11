class UsersController < ApplicationController
# the user clears cart when they buy or manually delete the cart
helper_method :add_cart


  def add_cart
    sum = 0;
  #want to byebug to actually see what is happening here
    current_cart.each do |productObj|
        sum += productObj['price'] * productObj['quantity'].to_i
    end

    sum
  end

  def show
    @user = User.find(params[:id])
    @cart = current_cart
  end

  def checkout
    current_user.bank_account = current_user.bank_account.to_i
    current_user.bank_account = add_cart
    #access seller and add monies to bank_account
    current_cart.clear
    redirect_to users_confirmation_path
  end

  def confirmation
    render :confirmation
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to login_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.valid?
      redirect_to user_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    #add the image later
    params.require(:user).permit(:first_name, :last_name,:user_name, :password, :password_confirmation, :email, :address, :bank_account)
  end

end
