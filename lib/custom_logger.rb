class ActiveRecord::Base
  def log_user_action
    user = User.find(self.user_id)
    custom_logger.info("Usuário de ID #{user.id.to_s} #{user.name} modificou um registro as #{DateTime.now} - #{self.attributes.to_yaml}") 
  end
end