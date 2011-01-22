class SubjectsController < ApplicationController

	permissive

	def index
		record_or_recall_sort_order
		puts params.merge({:types => 'Case'}).inspect
		@subjects = Subject.search(params.merge({:types => 'Case'}))
#		@subjects = Subject.search(params.merge({:types => 'Case',
#			:paginate => true}))
	end

end
