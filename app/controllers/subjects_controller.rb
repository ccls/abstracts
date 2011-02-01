#	Subject controller
class SubjectsController < ApplicationController

	resourceful

	before_filter :valid_id_required, :only => :merge
	before_filter :two_abstracts_required, :only => :merge

#	skip_before_filter :get_new
	skip_before_filter :get_all

	def index
		record_or_recall_sort_order
		@subjects = Subject.search(params.merge({:types => 'Case'}))
	end

	def merge
		@abstracts = @subject.abstracts
		@diffs = @subject.abstract_diffs
	end

protected

	def two_abstracts_required
		if @subject.abstracts_count > 2 ||
			@subject.abstracts_count < 2
			access_denied("Must complete 2 abstracts before merging. " <<
				":#{@subject.abstracts_count}:")
		end
	end

end
