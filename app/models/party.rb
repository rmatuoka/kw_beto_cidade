require 'custom_logger'

class Party < ActiveRecord::Base
  attr_accessible :name, :abreviation, :user_id
  validates_presence_of :name, :abreviation
  has_many :beings
  has_many :reports
  belongs_to :user

  before_save :log_user_action
end
