require 'partial_abstract_controller'
#	Application controller
class ApplicationController < ActionController::Base

	helper :all # include all helpers, all the time

	# See ActionController::RequestForgeryProtection for details
	protect_from_forgery

protected

	def ssl_allowed?
		#	Gary has setup the genepi server to force https with its own redirection.
		#	Forcing ssl in the application results in about 20 redirections back
		#	to itself, so this tells the app to ignore it.
		#	For testing, we cannot ignore the action check.
		#	I could use an alias_method_chain here, but would actually take more lines.
		request.host == "abstracts.brg.berkeley.edu" || (
			self.class.read_inheritable_attribute(:ssl_allowed_actions) || []).include?(action_name.to_sym)
	end

#	TODO stop using this if possible
	def redirections
		@redirections ||= HashWithIndifferentAccess.new({
			:not_be_user => {
				:redirect_to => user_path(current_user)
			}
		})
	end

	def valid_subject_id_required
		if !params[:subject_id].blank? and Subject.exists?(params[:subject_id])
			@subject = Subject.find(params[:subject_id])
		else
			access_denied("Valid subject id required!", 
				subjects_path)
		end
	end

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
