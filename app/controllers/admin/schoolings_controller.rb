class Admin::SchoolingsController < ApplicationController
  access_control do
      allow :admin, :assessor, :deputado, :all
  end
  
  layout "inadmin"
  
  def index
    @schoolings = Schooling.all_active
  end

  def show
    @schooling = Schooling.find(params[:id])
  end

  def new
    @schooling = Schooling.new
  end

  def create
    @schooling = Schooling.new(params[:schooling])
    if @schooling.save
      redirect_to [:admin, @schooling], :notice => "Successfully created schooling."
    else
      render :action => 'new'
    end
  end

  def edit
    @schooling = Schooling.find(params[:id])
  end

  def update
    @schooling = Schooling.find(params[:id])
    if @schooling.update_attributes(params[:schooling])
      redirect_to [:admin, @schooling], :notice  => "Successfully updated schooling."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @schooling = Schooling.find(params[:id])
    @schooling.newdestroy
    redirect_to admin_schoolings_url, :notice => "Successfully destroyed schooling."
  end
end
