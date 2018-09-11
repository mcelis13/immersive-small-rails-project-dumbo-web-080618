class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    @user = User.find_by(user_name: params['user_name'])
    if @user && @user.authenticate(params['password'])
      session[:current_user_id] = @user.id
      current_cart
      redirect_to root_path
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :current_user_id
    session.delete :cart
    redirect_to '/login'
  end

end
