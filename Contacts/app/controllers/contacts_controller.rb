class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    render :json => @contacts
  end

  def create
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
  end

  def destroy
  end

end
