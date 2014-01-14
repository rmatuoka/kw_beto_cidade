require 'custom_logger'

class City < ActiveRecord::Base
  has_many :entities
  has_many :beings
  has_many :reports
  belongs_to :user
  
  scoped_search :on => [:name, :population]
  validates_presence_of :name, :message => "- preencha o campo!"
  
  before_save :log_user_action
end
