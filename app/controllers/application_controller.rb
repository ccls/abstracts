class ApplicationController < ActionController::Base

	helper :all # include all helpers, all the time

	# See ActionController::RequestForgeryProtection for details
	protect_from_forgery

	def redirections
		@redirections ||= HashWithIndifferentAccess.new({
			:not_be_user => {
				:redirect_to => user_path(current_user)
			}
		})
	end

protected

	def valid_abstract_id_required
		if !params[:abstract_id].blank? and Abstract.exists?(params[:abstract_id])
			@abstract = Abstract.find(params[:abstract_id])
		else
			access_denied("Valid abstract id required!", 
				abstracts_path)
		end
	end

end
