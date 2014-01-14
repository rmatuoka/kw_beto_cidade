class Admin::BeingTypesController < ApplicationController
  access_control do
      allow :admin, :acessor, :deputado, :all
  end
  
  layout "inadmin"
  
  def index
    @being_types = BeingType.all_active
  end

  def show
    @being_type = BeingType.find(params[:id])
  end

  def new
    @being_type = BeingType.new
  end

  def create
    @being_type = BeingType.new(params[:being_type])
    if @being_type.save
      redirect_to [:admin, @being_type], :notice => "Successfully created being type."
    else
      render :action => 'new'
    end
  end

  def edit
    @being_type = BeingType.find(params[:id])
  end

  def update
    @being_type = BeingType.find(params[:id])
    if @being_type.update_attributes(params[:being_type])
      redirect_to [:admin, @being_type], :notice  => "Successfully updated being type."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @being_type = BeingType.find(params[:id])
    @being_type.newdestroy
    redirect_to admin_being_types_url, :notice => "Successfully destroyed being type."
  end
end
