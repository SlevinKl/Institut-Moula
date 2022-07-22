class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new create]
  before_action :find_contact, only: %i[destroy]

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:alert] = "Message envoyé"
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @contact.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end

  def find_article
    @article = Contact.find(params[:id])
  end
end
