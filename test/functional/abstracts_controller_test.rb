# full path NEEDED for rake test:coverage to find test_helper
require File.dirname(__FILE__) + '/../test_helper'

class AbstractsControllerTest < ActionController::TestCase

	ASSERT_ACCESS_OPTIONS = {
		:model => 'Abstract',
		:actions => [:new,:create,:edit,:update,:show,:destroy,:index],
		:attributes_for_create => :factory_attributes,
		:method_for_create => :create_abstract
	}
	def factory_attributes(options={})
		#	:abstract worked yesterday, but not today???
		#	updates were not updating
		Factory.attributes_for(:complete_abstract,options)	
	end

	assert_access_with_login({ 
		:logins => [:superuser,:admin] })
	assert_no_access_with_login({ 
		:logins => [:editor,:interviewer,:reader,:active_user] })
	assert_no_access_without_login

	assert_access_with_https
	assert_no_access_with_http

	assert_no_access_with_login(
		:attributes_for_create => nil,
		:method_for_create => nil,
		:actions => nil,
		:suffix => " and invalid id",
		:login => :superuser,
		:redirect => :abstracts_path,
		:edit => { :id => 0 },
		:update => { :id => 0 },
		:show => { :id => 0 },
		:destroy => { :id => 0 }
	)

	%w( superuser admin ).each do |cu|
			
		test "should set user_id on creation with #{cu} login" <<
				" without abstract hash" do
			u = send(cu)
			login_as u
			post :create
			assert assigns(:abstract)
			assert_equal u.id, assigns(:abstract).user_id
		end

		test "should set user_id on creation with #{cu} login" do
			u = send(cu)
			login_as u
			post :create, :abstract => factory_attributes
			assert assigns(:abstract)
			assert_equal u.id, assigns(:abstract).user_id
		end

	end


end
