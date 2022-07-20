class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    @contact = Contact.new
    redirect_to dashboard_path if user_signed_in?
  end
end
