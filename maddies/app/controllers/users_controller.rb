class UsersController < ApplicationController
  helper_method :cart
# the user clears cart when they buy or manually delete the cart
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    if user_params['seller'] == '1' # I am a seller
      @user = User.create(user_params)
      if @user.valid?
        redirect_to @user
      else
        render :new
      end
    else  # I am just a buyer
      @user = User.create(user_params)
      if @user.valid?
        redirect_to @user
      else
        render :new
      end
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
    params.require(:user).permit(:user_name, :password, :password_confirmation, :email, :name, :address, :credit_card)
  end

end
