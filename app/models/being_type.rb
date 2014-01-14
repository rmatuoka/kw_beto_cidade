class BeingType < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name
  
  has_many :beings
  has_many :reports
end
