class HomeController < ApplicationController
  def index
    if user_signed_in?
      if current_user.superadmin_role?
        redirect_to establishments_path
      elsif current_user.establishment_role?
        redirect_to current_user.establishment
      end
    # else
    end
  end
end
