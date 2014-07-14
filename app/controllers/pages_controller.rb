class PagesController < ApplicationController

  def index

    if logged_in?
      @user=User.find(session[:id])
      redirect_to home_url(@user)
    else
      @user=User.new
    end
  end

  def home
    @user=current_user
  end

  def music

  end

  def philosophy

  end

  def art

  end


end
