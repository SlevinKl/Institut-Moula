class PrestationsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  before_action :find_prestation, only: %i[show edit update destroy]
  before_action :user, only: %i[new create edit update destroy]

  def index
    @prestations = Prestation.all
    @prestations_visage = @prestations.select{ |prestation| prestation.category == 'Visage' }
    @prestations_corp = @prestations.select{ |prestation| prestation.category == 'Corp' }
    @prestations_mains = @prestations.select{ |prestation| prestation.category == 'Mains' }
    @prestations_pieds = @prestations.select{ |prestation| prestation.category == 'Pieds' }
    @prestations_epilations = @prestations.select{ |prestation| prestation.category == 'Epilations' }
  end

  def show
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
