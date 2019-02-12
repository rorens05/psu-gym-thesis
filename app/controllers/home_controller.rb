class HomeController < ApplicationController
  def index
    redirect_to dashboard_path if admin_signed_in?
  end
end
