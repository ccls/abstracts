class Subject < Ccls::Subject

	class NotTwoAbstracts < StandardError; end

#	with_options :foreign_key => 'study_subject_id' do |f|
#		f.has_many :abstracts
#	end
	has_many :abstracts

	has_one :first_abstract, :class_name => 'Abstract',
		:conditions => [
			"entry_1_by_uid IS NOT NULL AND " <<
			"entry_2_by_uid IS NULL AND " <<
			"merged_by_uid  IS NULL"
	]

	has_one :second_abstract, :class_name => 'Abstract',
		:conditions => [
			"entry_2_by_uid IS NOT NULL AND " <<
			"merged_by_uid  IS NULL"
	]

	has_one :merged_abstract, :class_name => 'Abstract',
		:conditions => [
			"merged_by_uid IS NOT NULL"
	]

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
