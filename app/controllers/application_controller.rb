class ApplicationController < ActionController::Base
    set_current_tenant_through_filter 
    before_action :set_tenant
    
    private 

    def set_tenant 
        if current_user
            set_current_tenant(current_user.utility_district)
        end 
    end 

end
