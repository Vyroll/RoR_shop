class AdministratorController < ApplicationController
  before_action :authenticate_user!

  def list_users
    if is_admin
      @users = User.all
    else
      render :text => "your not an admin"
    end
  end

  def is_admin
    if current_user.amenity_id == 2
      return true
    else
      return false
    end
  end
  helper_method :is_admin

end
