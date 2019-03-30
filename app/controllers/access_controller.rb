class AccessController < ApplicationController
  def login
  end

  def attempt_login
    user = Admin.find_by_username(params[:username])
    if user
      authenticated_user = user.authenticate(params[:password])
      if authenticated_user
        session[:id] = authenticated_user.id
        redirect_to dashboard_path
      else
        return_to_login
      end
    else
      return_to_login
    end
  end

  def logout 
    session[:id] = nil
    session[:customer_id] = nil
    redirect_to root_path
  end
  
  private 
  def return_to_login
    flash[:notice] = "Invalid username and password combination"
    redirect_to access_login_path 
  end
end
