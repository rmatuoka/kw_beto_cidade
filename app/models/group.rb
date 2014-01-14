require 'custom_logger'

class Group < ActiveRecord::Base
  attr_accessible :name, :user_id
  validates_presence_of :name
  
  has_many :beings_groups
  
  has_many :beings,
      :through => :beings_groups
  has_many :reports

  belongs_to :user
  
  before_save :log_user_action
end
