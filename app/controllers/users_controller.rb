class UsersController < ApplicationController

  def signup

    if @user.save
      session[:user_id] = @user.id
    end

    redirect_to home_url(@user)

  end

  def login

    @user = User.find_by(email: params[:email])

    if @user
      @user.authenticate(params[:password_digest])
      session[:user_id] = @user.id
    end

    redirect_to home_url(@user)
  end

  def logout

    session.clear
    redirect_to index_url

  end

end
