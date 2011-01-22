require 'test_helper'

class SubjectSearchTest < ActiveSupport::TestCase

#	case_subject / subject is irrelevant here

	test "should include subjects by abstracts_count = 0" do
		s1 = Factory(:case_subject)
		s2 = Factory(:subject)
		subjects = Subject.search(:abstracts_count => 0)
		assert subjects.include?(s1)
		assert subjects.include?(s2)
	end

	test "should include subjects by abstracts_count = 1" do
		s1 = Factory(:case_subject)
		Factory(:abstract, :subject => s1)
		s2 = Factory(:case_subject)
		subjects = Subject.search(:abstracts_count => 1)
		assert  subjects.include?(s1)
		assert !subjects.include?(s2)
	end

	test "should include subjects by abstracts_count = 2" do
		s1 = Factory(:case_subject)
		Factory(:abstract, :subject => s1)
		Factory(:abstract, :subject => s1)
		s2 = Factory(:case_subject)
		Factory(:abstract, :subject => s2)
		subjects = Subject.search(:abstracts_count => 2)
		assert  subjects.include?(s1)
		assert !subjects.include?(s2)
	end

end
