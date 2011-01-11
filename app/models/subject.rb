if g = Gem.source_index.find_name('jakewendt-ccls_engine').last
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
		if abstracts.length == 2
			#	abstracts.inject(:is_the_same_as?) was nice
			#	but using inject is ruby >= 1.8.7
			return abstracts[0].is_the_same_as?(abstracts[1])
		else
			raise Subject::NotTwoAbstracts
		end
	end

	def abstract_diffs
		if abstracts.length == 2
			#	abstracts.inject(:diff) was nice
			#	but using inject is ruby >= 1.8.7
			return abstracts[0].diff(abstracts[1])
		else
			raise Subject::NotTwoAbstracts
		end
	end

end
