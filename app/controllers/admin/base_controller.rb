class Admin::BaseController < ApplicationController
  before_action :authenticate_admin

  private
  
  def authenticate_admin
    if current_user
      unless current_user.admin?
        flash[:alert] = "Not allow!"
        redirect_to root_path
      end
    else
      flash[:alert] = "Not allow!"
      redirect_to root_path
    end      
  end

end