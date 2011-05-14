#	Abstract controller
class AbstractsController < ApplicationController

	before_filter :may_create_abstracts_required, :only => [:compare,:merge]

	before_filter :append_current_user_to_params, :only => [:create,:merge]

#	abstracts shallow sub route of subjects?
#	subject can't have more than one abstract and a NOT merged
#	before_filter :subject_can_not_have_more_than_one_already, :only => [:new,:create]

	resourceful

	skip_before_filter :get_new
	skip_before_filter :get_all

	before_filter :valid_subject_id_required, 
		:only => [:new,:create,:compare,:merge]

	before_filter :two_abstracts_required, 
		:only => [:compare,:merge]

	before_filter :compare_abstracts,
		:only => [:compare,:merge]

	def index
		@abstracts = Abstract.search(params)
	end

#	def new
#		@abstract = @subject.abstracts.new(params[:abstract])
#	end

	#	override's resourceful create
	def create
		@abstract = @subject.abstracts.new(params[:abstract])
		@abstract.save!
		flash[:notice] = 'Success!'
		redirect_to @abstract
	rescue ActiveRecord::RecordNotSaved, ActiveRecord::RecordInvalid
		flash.now[:error] = "There was a problem creating the abstract"
#		render :action => "new"	#	there is no 'new'
		redirect_to abstracts_path
	end

	def compare
	end

	def merge
		@abstract = @subject.abstracts.new(params[:abstract].merge(:merging => true))
		@abstract.save!
		flash[:notice] = 'Success!'
		redirect_to @abstract
	rescue ActiveRecord::RecordNotSaved, ActiveRecord::RecordInvalid
		flash.now[:error] = "There was a problem merging the abstract"
		render :action => "compare"
	end

protected

	def compare_abstracts
		@abstracts = @subject.abstracts
		@diffs = @subject.abstract_diffs
	end

	def two_abstracts_required
		abstracts_count = @subject.abstracts_count
		unless( abstracts_count == 2 )
			access_denied("Must complete 2 abstracts before merging. " <<
				":#{abstracts_count}:")
		end
	end

	def append_current_user_to_params
		params[:abstract] = {} unless params[:abstract]
		params[:abstract].merge!(:current_user => current_user)
	end

end
