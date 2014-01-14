class Admin::BeingsController < ApplicationController
  access_control do
      allow :admin, :acessor, :deputado, :all
  end
  
  layout "inadmin", :except=>[:type]
  before_filter :load_dropdowns
  
  def index
    if current_user.has_role? :acessor
      @beings = current_user.beings.all_active
    else
      @beings = Being.all_active
    end
  end

  def show
    @being = Being.find(params[:id])
  end

  def new
    @being = Being.new
  end

  def create
    @being = Being.new(params[:being])
    if @being.save
      redirect_to [:admin, @being], :notice => "Successfully created being."
    else
      render :action => 'new'
    end
  end

  def edit
    @being = Being.find(params[:id])
  end

  def update
    @being = Being.find(params[:id])
    if @being.update_attributes(params[:being])
      redirect_to [:admin, @being], :notice  => "Successfully updated being."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @being = Being.find(params[:id])
    @being.newdestroy
    redirect_to admin_beings_url, :notice => "Successfully destroyed being."
  end
  
  def load_dropdowns
    @schoolings = Schooling.all.collect { |c| [c.name, c.id] }
    @parties = Party.all.collect { |c| [c.name, c.id] }
    @cities = City.all.collect { |c| [c.name, c.id] }
    @being_types = BeingType.all.collect { |c| [c.name, c.id] }
  end
  
  def type
    @type = params[:id]
    if @type.to_i == 1
       @companies = Company.all
    end
  end
end
