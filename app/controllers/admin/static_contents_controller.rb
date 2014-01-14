class Admin::StaticContentsController < ApplicationController  
  access_control do
      allow :admin, :acessor, :deputado, :all
  end
  
  layout "inadmin"  
    
  def index
    
  end
end
