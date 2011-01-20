require 'test_helper'

class SubjectTest < ActiveSupport::TestCase

	assert_should_have_many :abstracts

	test "should raise Subject::NotTwoAbstracts with 0 abstracts on abstracts_the_same?" do
		subject = Factory(:subject)
		assert_equal 0, subject.abstracts.length
		assert_raise(Subject::NotTwoAbstracts) {
			subject.abstracts_the_same?
		}
	end

	test "should raise Subject::NotTwoAbstracts with 1 abstracts on abstracts_the_same?" do
		subject = Factory(:subject)
		Factory(:abstract, :subject => subject)
		subject.reload
		assert_equal 1, subject.abstracts.length
		assert_raise(Subject::NotTwoAbstracts) {
			subject.abstracts_the_same?
		}
	end

	test "should return true if abstracts are the same on abstracts_the_same?" do
		subject = Factory(:subject)
		Factory(:abstract, :subject => subject)
		Factory(:abstract, :subject => subject)
		subject.reload
		assert_equal 2, subject.abstracts.length
		assert subject.abstracts_the_same?
	end

	test "should raise Subject::NotTwoAbstracts with 3 abstracts on abstracts_the_same?" do
		subject = Factory(:subject)
		Factory(:abstract, :subject => subject)
		Factory(:abstract, :subject => subject)
		Factory(:abstract, :subject => subject)
		subject.reload
		assert_equal 3, subject.abstracts.length
		assert_raise(Subject::NotTwoAbstracts) {
			subject.abstracts_the_same?
		}
	end

	test "should raise Subject::NotTwoAbstracts with 0 abstracts on abstract_diffs" do
		subject = Factory(:subject)
		assert_equal 0, subject.abstracts.length
		assert_raise(Subject::NotTwoAbstracts) {
			subject.abstract_diffs
		}
	end

	test "should raise Subject::NotTwoAbstracts with 1 abstracts on abstract_diffs" do
		subject = Factory(:subject)
		Factory(:abstract, :subject => subject)
		subject.reload
		assert_equal 1, subject.abstracts.length
		assert_raise(Subject::NotTwoAbstracts) {
			subject.abstract_diffs
		}
	end

	test "should return true if abstracts are the same on abstract_diffs" do
		subject = Factory(:subject)
		Factory(:abstract, :subject => subject)
		Factory(:abstract, :subject => subject)
		subject.reload
		assert_equal 2, subject.abstracts.length
		assert_equal Hash.new, subject.abstract_diffs
		assert       subject.abstract_diffs.empty?
	end

	test "should raise Subject::NotTwoAbstracts with 3 abstracts on abstract_diffs" do
		subject = Factory(:subject)
		Factory(:abstract, :subject => subject)
		Factory(:abstract, :subject => subject)
		Factory(:abstract, :subject => subject)
		subject.reload
		assert_equal 3, subject.abstracts.length
		assert_raise(Subject::NotTwoAbstracts) {
			subject.abstract_diffs
		}
	end

end
