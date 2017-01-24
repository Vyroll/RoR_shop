class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def tmp
  end

	def amenity 
    return current_user.amenity_id 
		end
	helper_method :amenity

end
