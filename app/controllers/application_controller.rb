class ApplicationController < ActionController::Base
  before_action :show_console
  before_action :redirect_to_login, except: [:login, :attempt_login, :logout]
  before_action :redirect_to_dashboard, only: [:login]

  def show_console
    if Rails.env.development?
      console
    end
  end

  def admin_only
    if session[:id].blank?
      redirect_to root_path
    end
  end

  def redirect_to_admin
    if session[:id].present?
      redirect_to users_path
    end
  end

  def redirect_to_login
    if Admin.find_by_id(session[:id]).blank?
      session[:id] = nil
      redirect_to access_login_path
    end
  end

  def redirect_to_dashboard
    if session[:id]
      redirect_to dashboard_path
    end
  end
end
