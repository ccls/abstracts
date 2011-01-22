require 'test_helper'

class SubjectsControllerTest < ActionController::TestCase

	ASSERT_ACCESS_OPTIONS = {
		:model => 'Subject',
		:actions => [:index],
		:method_for_create => :create_subject
	}

	assert_access_with_login({ 
		:logins => [:superuser,:admin] })
	assert_no_access_with_login({ 
		:logins => [:editor,:interviewer,:reader,:active_user] })
	assert_no_access_without_login

	assert_access_with_https
	assert_no_access_with_http

	assert_no_route(:get,:show,:id => 0)	
	assert_no_route(:get,:new)
	assert_no_route(:post,:create)
	assert_no_route(:get,:edit,:id => 0)
	assert_no_route(:put,:update,:id => 0)
	assert_no_route(:delete,:destroy,:id => 0)

	%w( superuser admin ).each do |cu|

		test "should get index of only case subjects with #{cu} login " do
			Factory(:case_subject)
			login_as send(cu)
			get :index
			assert_response :success
			assert_template :index
			assert assigns(:subjects)
			assert assigns(:subjects).length > 0
			assigns(:subjects).each do |subject|
				assert_equal 'Case', subject.subject_type.to_s
			end
		end
			
	end

end
