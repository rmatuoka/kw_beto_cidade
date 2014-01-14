require 'custom_logger'

class Schooling < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name
  has_many :beings
  has_many :reports
  
  before_save :log_user_action
end
