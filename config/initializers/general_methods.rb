class ActiveRecord::Base
  #Metodo que substitui o destroy
  def newdestroy
    self.active = false
    self.save
  end
    
  private 
  # Metodo para listar somente os ativos (Não "Deletados")
  def self.all_active
    all(:conditions => ['active =  true'])
  end
  
  # Metodo para listar somente os ativos (Não "Deletados")
  def self.find_active(id)
    find_by_id(id, :conditions => ['active =  true'])
  end  
  
  # Metodo para listar todos os ativos e publicados
  # Aceita o parametro Ordenar que se não for passado ira assumir id 
  def self.all_published(ordernar ='')
    order = 'id'
    if !ordernar.blank? 
      order = ordernar
    end 
    all(:conditions => ['active =  true and published = true'],
        :order => order)
  end  
  
  # Metodo para listar o item ativos e publicados 
  def self.find_published(id)
    find_by_id(id, :conditions => ['active =  true and published = true'])
  end
  
  # Custom logger
  def custom_logger
    @@custom_logger ||= Logger.new("#{Rails.root}/log/user_actions.log")
  end
end