#	StudySubject controller
class StudySubjectsController < ApplicationController

	resourceful

	skip_before_filter :get_all

	def index
		recall_or_record_sort_order
		@study_subjects = StudySubject.search(params.merge({:types => 'Case'}))
	end

end
