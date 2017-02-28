class Api::V1:SessionsController < Devise::SessionsController
	skip_before_filter :verify_authenticity_token,
	                   :if => Proc.new { |c| c.request.format == 'appication/json' }
	respond_to :json
	def create
       warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#failure")
       render :status => 200
              :json => {:sucess => true,
                        :info => "Logged in",
                        :data => {:auth_token => current_user.authenticate_token}}
    end
    def failure
    	render :stutus => 401
    	       :json => {:success => false,
    	                 :info => "Login Failed",
    	                 :data =>{}}
    end
end
