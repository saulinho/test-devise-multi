class ApplicationController < ActionController::Base
  set_current_tenant_by_subdomain(:company, :subdomain)
  before_action :authenticate_user!  
end