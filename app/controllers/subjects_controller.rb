#	Subject controller
class SubjectsController < ApplicationController

	resourceful

#	before_filter :valid_id_required, :only => [:compare,:merge]
#	before_filter :two_abstracts_required, :only => [:compare,:merge]

#	skip_before_filter :get_new
	skip_before_filter :get_all

	def index
		recall_or_record_sort_order
		@subjects = Subject.search(params.merge({:types => 'Case'}))
	end

#	def compare
#		@abstracts = @subject.abstracts
#		@diffs = @subject.abstract_diffs
#	end
#
#	def merge
#	end

protected

	def two_abstracts_required
		abstracts_count = @subject.abstracts_count
		if abstracts_count > 2 ||
			abstracts_count < 2
			access_denied("Must complete 2 abstracts before merging. " <<
				":#{abstracts_count}:")
		end
	end

end
