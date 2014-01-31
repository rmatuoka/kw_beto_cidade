class Admin::UsersController < ApplicationController
  access_control do
      allow :admin, :assessor, :deputado, :all
  end
  
  layout "inadmin"
  
  def index
    @users = User.all.paginate :page => params[:page],:per_page => 20
  end

  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to admin_users_path, :notice => "Usuário criado com sucesso."
    else
      render :action => 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to admin_user_path(@user), :notice  => "Dados Atualizados com sucesso!"
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path, :notice => "Usuário Deletado com sucesso!"
  end
  
  def search
    if !params[:keyword].blank?
      @Results = User.search_for(params[:keyword]).paginate :page => params[:page],:per_page => 20
    end
  end
    
end
