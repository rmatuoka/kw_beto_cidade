class Admin::ReportsController < ApplicationController
  access_control do
      allow :admin, :acessor, :deputado, :all
  end
  
  layout "inadmin"
  
  def index
    @reports = Report.all
  end
  
  def new
    @report = Report.new
  end
  
  def create
    @report = Report.new(params[:report])
    
    being_types_ids = ""
    params[:report][:being_types_ids].each do |v|
      being_types_ids = being_types_ids + v + " "
    end
    @report.being_types_ids = being_types_ids
    
    schooling_ids = ""
    params[:report][:schooling_ids].each do |v|
      schooling_ids = schooling_ids + v + " "
    end
    @report.schooling_ids = schooling_ids
    
    party_ids = ""
    params[:report][:party_ids].each do |v|
      party_ids = party_ids + v + " "
    end
    @report.party_ids = party_ids
    
    city_ids = ""
    params[:report][:city_ids].each do |v|
      city_ids = city_ids + v + " "
    end
    @report.city_ids = city_ids
    
    group_ids = ""
    params[:report][:group_ids].each do |v|
      group_ids = group_ids + v + " "
    end
    @report.group_ids = group_ids
    
    
    if @report.save
      redirect_to [:admin, @report], :notice => "Successfully created report."
    else
      render :action => 'new'
    end
  end
  
  def show
    @report = Report.find(params[:id])
    
    @query = ""
    
    #TIPO DE ENTIDADE
    if !@report.being_types_ids.blank?
      @query = @query + " ( "
      @report.being_types_ids.strip.split(/\s+/).each do |s|
        @query = @query + " being_types.id = #{s} OR "
      end
      @query = @query.first(@query.length - 3)
      @query = @query + " ) AND"
    end
    
    #ESCOLARIDADE
    if !@report.schooling_ids.blank?
      @query = @query + " ( "
      @report.schooling_ids.strip.split(/\s+/).each do |s|
        @query = @query + " schoolings.id = #{s} OR "
      end
      @query = @query.first(@query.length - 3)
      @query = @query + " ) AND"
    end
    
    #CIDADE
    if !@report.city_ids.blank?
      @query = @query + " ( "
      @report.city_ids.strip.split(/\s+/).each do |s|
        @query = @query + " cities.id = #{s} OR "
      end
      @query = @query.first(@query.length - 3)
      @query = @query + " ) AND"
    end
    
    #PARTIDO
    if !@report.party_ids.blank?
      @query = @query + " ( "
      @report.party_ids.strip.split(/\s+/).each do |s|
        @query = @query + " parties.id = #{s} OR "
      end
      @query = @query.first(@query.length - 3)
      @query = @query + " ) AND"
    end
    
    #GRUPOS

    if !@report.group_ids.blank?
      @query = @query + " ( "
      @report.group_ids.strip.split(/\s+/).each do |s|
        @query = @query + " groups.id = #{s} OR "
      end
      @query = @query.first(@query.length - 3)
      @query = @query + " ) AND"
    end
    
    @query = @query.first(@query.length - 3)
    
    puts @query
    
    @results = Being.joins(:being_type, :schooling, :party, :city, :"groups").all(:conditions =>['being_types.active = 1 AND ' + @query])
    
    #@results = Being.all
  end
  
  def register_by_user
    @reports =  User.all
    
    respond_to do |format|
      format.html
      format.xls
    end 
  end
end
