require 'partial_abstract_controller'
#	Application controller
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

	def record_or_recall_sort_order
		%w( dir order ).map(&:to_sym).each do |param|
			if params[param].blank? && !session[param].blank?
				params[param] = session[param]	#	recall
			elsif !params[param].blank?
				session[param] = params[param]	#	record
			end
		end
	end
	alias_method :recall_or_record_sort_order, :record_or_recall_sort_order

end
