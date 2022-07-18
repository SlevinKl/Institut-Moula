class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home about contact]

  def home
    redirect_to dashboard_path if user_signed_in?
  end

  def contact
  end
end
