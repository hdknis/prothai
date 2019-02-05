class ApplicationController < ActionController::Base
	layout 'review_site'
	def after_sign_out_path_for(resource)
     rails_admin_path
    end
end
