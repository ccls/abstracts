require 'test_helper'

class StudySubjectsControllerTest < ActionController::TestCase

	ASSERT_ACCESS_OPTIONS = {
		:model => 'StudySubject',
		:actions => [:index],
		:method_for_create => :create_study_subject
	}

	assert_access_with_login({ 
		:logins => site_administrators })
	assert_no_access_with_login({ 
		:logins => non_site_administrators })
	assert_no_access_without_login

	assert_access_with_https
	assert_no_access_with_http

	assert_no_route(:get,:show,:id => 0)	
	assert_no_route(:get,:new)
	assert_no_route(:post,:create)
	assert_no_route(:get,:edit,:id => 0)
	assert_no_route(:put,:update,:id => 0)
	assert_no_route(:delete,:destroy,:id => 0)

	site_administrators.each do |cu|

		test "should get index of only case study_subjects with #{cu} login " do
			Factory(:case_study_subject)
			login_as send(cu)
			get :index
			assert_response :success
			assert_template :index
			assert assigns(:study_subjects)
			assert assigns(:study_subjects).length > 0
			assigns(:study_subjects).each do |study_subject|
				assert_equal 'Case', study_subject.subject_type.to_s
			end
		end
			
	end

end
