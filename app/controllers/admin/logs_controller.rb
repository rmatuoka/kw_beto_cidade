class Admin::LogsController < ApplicationController
  access_control do
      allow :admin, :all
  end
  
  layout "inadmin"
  
  def index
    @log = ""
    File.read("#{Rails.root}/log/user_actions.log").each_line do |line|
      @log = @log + line + "<br />"
    end
  end
end
