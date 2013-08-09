class City < ActiveRecord::Base
  has_many :entities
  scoped_search :on => [:name, :population]
  validates_presence_of :name, :message => "- preencha o coampo!"
  
end
