class Admin::CitiesController < ApplicationController
  layout "inadmin"
  def index
    @cities = City.all.paginate :page => params[:page], :per_page => 20
  end

  def show
    @city = City.find(params[:id])
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(params[:city])
    if @city.save
      redirect_to [:admin, @city], :notice => "Successfully created city."
    else
      render :action => 'new'
    end
  end

  def edit
    @city = City.find(params[:id])
  end

  def update
    @city = City.find(params[:id])
    if @city.update_attributes(params[:city])
      redirect_to admin_city_path(@city), :notice  => "Successfully updated city."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to admin_cities_url, :notice => "Successfully destroyed city."
  end
  
    def search
    if !params[:keyword].blank?
      @Results = City.search_for(params[:keyword]).paginate :page => params[:page],:per_page => 20
    end
  end
  
end
