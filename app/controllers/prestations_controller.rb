class PrestationsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  before_action :find_prestation, only: %i[show edit update destroy]
  before_action :user, only: %i[new create edit update destroy]

  def index
    @prestations = Prestation.all
  end

  def show
    @prestations = Prestation.all
  end

  def new
    @prestation = Prestation.new
  end

  def create
    @prestation = Prestation.new(prestation_params)
    @prestation.user = @user
    if @prestation.save
      redirect_to prestations_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @prestation.update(prestation_params)
    redirect_to prestations_path
  end

  def destroy
    @prestation.destroy
    redirect_to prestations_path, status: :see_other
  end

  private

  def prestation_params
    params.require(:prestation).permit(:title, :content, :price, :category, :image)
  end

  def find_prestation
    @prestation = Prestation.find(params[:id])
  end

  def user
    @user = current_user
  end
end
