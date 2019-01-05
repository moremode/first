class MainController < ApplicationController

  def auth

  end

  def authpost
    user = User.find_by_username(params[:user][:username])
    if (user.password == params[:user][:password])
      session[:name] = params[:user][:username]
      redirect_to('/instruments')
    else
      redirect_to('/auth')
    end
  end

  def instruments
    @user = User.find_by_username(session[:name])
    if (@user == nil)
      redirect_to('/auth')
    else
      @level = @user.level.level
    end
  end

  def change_post
    if (params[:commit] == 'Save User')
      user = User.find(params[:user][:id])
      user.update_attribute(:level_id, params[:user][:level_id])
      redirect_to('/instruments')
    elsif (params[:commit] == 'Set')
      point = Point.new
      point.point = params[:point][:point]
      point.user_id = params[:point][:id]
      point.save
    end
  end

  def destroy
    User.destroy(params[:id])
    redirect_to '/instruments'
  end

end
