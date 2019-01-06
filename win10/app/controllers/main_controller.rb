class MainController < ApplicationController

  def auth
    if (User.find_by_username(session[:name]) != nil)
      redirect_to '/instruments'
    end
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
    if (params[:commit] == 'Изменить')
      user = User.find(params[:user][:id])
      user.update_attribute(:level_id, params[:user][:level_id])
      redirect_to('/instruments')
    elsif (params[:commit] == 'Поставить')
      point = Point.new
      point.point = params[:point][:point]
      point.user_id = params[:point][:id]
      point.subject_id = params[:point][:subject_id]
      point.save
      redirect_to '/instruments'
    end
  end

  def destroy
    if (User.find_by_username(session[:name]) != nil && User.find_by_username(session[:name]).level.level == 'Admin')
      User.destroy(params[:id])
    end
    redirect_to '/instruments'
  end

  def exit
    session[:name] = ''
    redirect_to '/auth'
  end

end
