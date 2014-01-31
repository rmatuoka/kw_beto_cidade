class Admin::GroupsController < ApplicationController
  access_control do
      allow :admin, :assessor, :deputado, :all
  end
  
  layout "inadmin"
  
  def index
    @groups = Group.all_active
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(params[:group])
    if @group.save
      redirect_to admin_groups_url, :notice => "Successfully created group."
    else
      render :action => 'new'
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update_attributes(params[:group])
      redirect_to admin_groups_url, :notice  => "Successfully updated group."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.newdestroy
    redirect_to admin_groups_url, :notice => "Successfully destroyed group."
  end
end
