class ContactsController < ApplicationController

  def index
    @contacts = Contact.contacts_for_user_id(params[:user_id])
    render :json => @contacts
  end

  def create
    params[:contact][:user_id] = params[:user_id]
    @contact = Contact.new(params[:contact])
    if @contact.save
      render :json => @contact
    else
      render :json => @contact.errors
    end
  end

  def show
    @contact = Contact.find(params[:id])
    render :json => @contact
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(params[:contact])
      render :json => @contact
    else
      render :json => @contact.errors
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    if @contact.destroy
      head :ok
    end
  end

  def favorites
    @favorites = Contact.favorites_for_user_id(params[:user_id])
    render :json => @favorites
  end

end
