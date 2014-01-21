class SecretarySecretary < ActiveRecord::Base  
  has_many :beings,
      :through => :beings_secretary_secretaries
end
