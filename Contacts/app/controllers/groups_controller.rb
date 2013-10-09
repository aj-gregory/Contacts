class GroupsController < ApplicationController
  def index
    @groups = User.find(params[:user_id]).groups
    render :json => @groups
  end

  def create
    params[:group][:user_id] = params[:user_id]
    @group = Group.new(params[:group])
    if @group.save
      render :json => @group
    else
      render :json => @group.errors
    end
  end

  def show
    @group = Group.find(params[:id])
    render :json => { :name => @group.name, :contacts => @group.contacts }
  end

  def update
    @group = Group.find(params[:id])
    if @group.update_attributes(params[:group])
      render :json => @group
    else
      render :json => @group.errors
    end
  end

  def destroy
    @group = Group.find(params[:id])
    if @group.destroy
      head :ok
    end
  end
end