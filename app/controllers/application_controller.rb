class ApplicationController < ActionController::Base
  before_action :show_console
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
end
