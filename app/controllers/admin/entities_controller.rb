class Admin::EntitiesController < ApplicationController
  layout "inadmin"
  before_filter :load_city
  def index
    @entities = @city.entities.all.paginate :page => params[:page], :per_page => 20
  end

  def show
    @entity = @city.entities.find(params[:id])
  end

  def new
    @entity = @city.entities.build
  end

  def create
    @entity = @city.entities.build(params[:entity])
    if @entity.save
      redirect_to admin_city_entity_path(@city,@entity), :notice => "Successfully created entity."
    else
      render :action => 'new'
    end
  end

  def edit
    @entity = @city.entities.find(params[:id])
  end

  def update
    @entity = @city.entities.find(params[:id])
    if @entity.update_attributes(params[:entity])
      redirect_to admin_city_entity_path(@city,@entity), :notice  => "Successfully updated entity."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @entity = @city.entities.find(params[:id])
    @entity.destroy
    redirect_to admin_city_entities_path(@city), :notice => "Successfully destroyed entity."
  end
  
  def load_city
    @city = City.find(params[:city_id])
  end
  
  def search
    if !params[:keyword].blank?
      @Results = @city.entities.search_for(params[:keyword]).paginate :page => params[:page],:per_page => 20
    end
  end
  
  
end
