class City < ActiveRecord::Base
  scoped_search :on => [:name, :population]
  
  validates_presence_of :name, :message => "- preencha o coampo!"
  
end
