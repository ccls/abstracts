#	Subject controller
class SubjectsController < ApplicationController

	resourceful

	skip_before_filter :get_all

	def index
		recall_or_record_sort_order
		@subjects = Subject.search(params.merge({:types => 'Case'}))
	end

end
