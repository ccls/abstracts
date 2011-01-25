require 'test_helper'

class SubjectSearchTest < ActiveSupport::TestCase

#	case_subject / subject is irrelevant here
#	added :types => 'Case'

	test "should include subjects by abstracts_count = 0" do
		s1 = Factory(:case_subject)
		assert_equal 0, s1.abstracts_count
		s2 = Factory(:subject)
		assert_equal 0, s2.abstracts_count
		subjects = Subject.search(:abstracts_count => 0, :types => 'Case')
		assert subjects.include?(s1)
		assert subjects.include?(s2)
	end

	test "should include subjects by abstracts_count = 1" do
		s1 = Factory(:case_subject)
		assert_equal 0, s1.abstracts_count
		Factory(:abstract, :subject => s1)
		assert_equal 1, s1.reload.abstracts_count
		s2 = Factory(:case_subject)
		assert_equal 0, s2.abstracts_count
		subjects = Subject.search(:abstracts_count => 1, :types => 'Case')
		assert  subjects.include?(s1)
		assert !subjects.include?(s2)
	end

	test "should include subjects by abstracts_count = 2" do
		s1 = Factory(:case_subject)
		assert_equal 0, s1.abstracts_count
		Factory(:abstract, :subject => s1)
		assert_equal 1, s1.reload.abstracts_count
		Factory(:abstract, :subject => s1)
		assert_equal 2, s1.reload.abstracts_count
		s2 = Factory(:case_subject)
		assert_equal 0, s2.abstracts_count
		Factory(:abstract, :subject => s2)
		assert_equal 1, s2.reload.abstracts_count
		subjects = Subject.search(:abstracts_count => 2, :types => 'Case')
		assert  subjects.include?(s1)
		assert !subjects.include?(s2)
	end

end
