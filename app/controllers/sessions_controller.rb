class SessionsController < ApplicationController
  def create
  end

  def new
  end

  def destroy
  end

  def omniauth
    debugger
    @user = User.from_omniauth(request.env['omniauth.auth'])
    
    if @user.save
        session[:user_id] = @user.id
        redirect_to lectures_path
        
    else
      redirect_to 'lectures#index'
      
    end
  end

end