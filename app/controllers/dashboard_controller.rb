class DashboardController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  # before_action :authenticate_user!, except: [:dashboard_h]
  
  def dashboard_v1
  end
  def dashboard_v2
  end
  def dashboard_v3
  end
  # set another layout for a specific action
  def dashboard_h
    @fake_data = "9,5,9,1,9,1,9,1,9,1,9,5,9"
    render :layout => 'application-h'
  end
end
