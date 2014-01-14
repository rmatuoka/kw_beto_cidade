require 'custom_logger'

class Being < ActiveRecord::Base
  attr_accessible :name, :date_of_birth, :schooling_id, :city_id, :party_id, :being_type_id, :group_ids, :user_id
  validates_presence_of :name, :date_of_birth, :schooling_id, :city_id, :party_id
  
  belongs_to :party
  belongs_to :city
  belongs_to :schooling
  belongs_to :being_party
  belongs_to :being_type
  belongs_to :user
  
  has_many :beings_groups
  
  has_many :groups,
      :through => :beings_groups
      
  before_save :log_user_action
end
