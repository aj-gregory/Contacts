class ContactGroupsController < ApplicationController

  def create
    params[:contact_group][:group_id] = params[:group_id]
    @contact_group = ContactGroup.new(params[:contact_group])
    if @contact_group.save
      render :json => @contact_group
    else
      render :json => @contact_group.errors
    end
  end

  def destroy
    @contact_group = ContactGroup.find(params[:id])
    if @contact_group.destroy
      head :ok
    end
  end

end
