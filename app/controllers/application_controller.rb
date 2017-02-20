class ApplicationController < ActionController::Base
	protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
 	after_filter :cors_set_access_control_headers

	def cors_set_access_control_headers
		headers['Access-Control-Allow-Origin'] = '*'
		headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS, HEAD'
		headers['Access-Control-Allow-Headers'] = '*'
		headers['Access-Control-Max-Age'] = "1728000"
	end
end
