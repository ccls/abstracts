class SubjectsController < ApplicationController

	permissive

	def index
		record_or_recall_sort_order
		@subjects = Subject.search(params.merge({:types => 'Case'}))
	end

end
