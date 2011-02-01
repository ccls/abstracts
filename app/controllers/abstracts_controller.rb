#	Abstract controller
class AbstractsController < ApplicationController

	before_filter :append_current_user_to_params, :only => :create

#	abstracts shallow sub route of subjects?
#	subject can't have more than one abstract and a NOT merged
#	before_filter :subject_can_not_have_more_than_one_already, :only => [:new,:create]

	resourceful

	skip_before_filter :get_new
	skip_before_filter :get_all

	def index
#		@abstracts = Abstract.all(:include => [:subject => :identifier])
		@abstracts = Abstract.search(params)
	end

	def new
		@abstract = Abstract.new(params[:abstract])
	end

	#	override's resourceful create
	def create
		@abstract = Abstract.new(params[:abstract])
		@abstract.save!
		flash[:notice] = 'Success!'
		redirect_to @abstract
	rescue ActiveRecord::RecordNotSaved, ActiveRecord::RecordInvalid
		flash.now[:error] = "There was a problem creating " <<
			"the abstract"
		render :action => "new"
	end

protected

	def append_current_user_to_params
		params[:abstract] = {} unless params[:abstract]
		params[:abstract].merge!(:current_user => current_user)
	end

end
