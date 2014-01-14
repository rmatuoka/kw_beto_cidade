class Report < ActiveRecord::Base
  belongs_to :user
  belongs_to :being_type
  belongs_to :party
  belongs_to :group
  belongs_to :city
  belongs_to :schooling
end
