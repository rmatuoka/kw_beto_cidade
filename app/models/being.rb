require 'custom_logger'

class Being < ActiveRecord::Base
  #attr_accessible :name, :date_of_birth, :schooling_id, :city_id, :party_id, :being_type_id, :group_ids, :user_id
  validates_presence_of :name #, :schooling_id, :city_id, :party_id
  
  belongs_to :party
  belongs_to :city_being, :class_name => "City", :foreign_key => "city_id"
  belongs_to :city_work, :class_name => "City", :foreign_key => "city_work_id"   
  belongs_to :schooling
  belongs_to :being_party
  belongs_to :being_type
  belongs_to :user
  belongs_to :company
  
  has_many :beings_groups
  
  has_many :groups,
      :through => :beings_groups
        
  has_many :beings_secretary_secretaries    
  has_many :secretary_secretaries,
      :through => :beings_secretary_secretaries 
      
  before_save :log_user_action
end
