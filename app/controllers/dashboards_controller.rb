class DashboardsController < ApplicationController
  def display
    @user = current_user
    @prestations = Prestation.all
    @articles = Article.all
  end
end
