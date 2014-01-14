class BeingsGroup < ActiveRecord::Base
  belongs_to :being
  belongs_to :group
end
