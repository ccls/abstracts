if g = Gem.source_index.find_name('ccls-ccls_engine').last
require 'ccls_engine'
require g.full_gem_path + '/app/models/subject'
end

class Subject::NotTwoAbstracts < StandardError; end

Subject.class_eval do

#	with_options :foreign_key => 'study_subject_id' do |f|
#		f.has_many :abstracts
#	end
	has_many :abstracts

	def abstracts_the_same?
		raise Subject::NotTwoAbstracts unless abstracts.length == 2
		#	abstracts.inject(:is_the_same_as?) was nice
		#	but using inject is ruby >= 1.8.7
		return abstracts[0].is_the_same_as?(abstracts[1])
	end

	def abstract_diffs
		raise Subject::NotTwoAbstracts unless abstracts.length == 2
		#	abstracts.inject(:diff) was nice
		#	but using inject is ruby >= 1.8.7
		return abstracts[0].diff(abstracts[1])
	end

end
