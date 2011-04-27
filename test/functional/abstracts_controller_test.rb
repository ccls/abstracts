require 'test_helper'

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
		:logins => site_administrators })
	assert_no_access_with_login({ 
		:logins => ( ALL_TEST_ROLES - site_administrators ) })
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

	site_administrators.each do |cu|
			
		test "should set user_id on creation with #{cu} login" <<
				" without abstract hash" do
			u = send(cu)
			login_as u
			post :create
			assert assigns(:abstract)
pending
#			assert_equal u.id, assigns(:abstract).user_id
		end

		test "should set user_id on creation with #{cu} login" do
			u = send(cu)
			login_as u
			post :create, :abstract => factory_attributes
			assert assigns(:abstract)
pending
#			assert_equal u.id, assigns(:abstract).user_id
		end

		test "should set entry_1_by on creation if subject's first abstract " <<
				"with #{cu} login" do
			u = send(cu)
			login_as u
#	include subject's patid
			assert_difference('Abstract.count',1) {
				post :create, :abstract => factory_attributes
			}
			assert assigns(:abstract)
pending
#			assert_equal u, assigns(:abstract).entry_1_by
		end

		test "should set entry_2_by on creation if subject's second abstract " <<
				"with #{cu} login" do
			u = send(cu)
			login_as u
#	create an abstract for subject and then ....
#	include subject's patid
			assert_difference('Abstract.count',1) {
				post :create, :abstract => factory_attributes
			}
			assert assigns(:abstract)
pending
#			assert_equal u, assigns(:abstract).entry_2_by
		end

		test "should set merged_by on merge of subject's abstracts with #{cu} login" do
			u = send(cu)
			login_as u
#			assert_difference('Abstract.count', -1) {
#				adds 1 new abstract and destroys 2 others
#			post :merge, :patid => ???
#			post :create, :abstract => factory_attributes
#			}
#			assert assigns(:abstract)
pending
#			assert_equal u, assigns(:abstract).merged_by
		end

		test "should create abstract with #{cu} login " <<
				"and valid patid" do
			u = send(cu)
			login_as u
			subject = create_case_subject_with_patid(1234)
			assert_difference "Abstract.count", 1 do
				post :create, :abstract => { :patid => subject.patid }
				assert assigns(:abstract)
				assert_nil flash[:error]
				assert_not_nil flash[:notice]
				assert_redirected_to abstract_path(assigns(:abstract))
				assert_equal subject.id, assigns(:abstract).subject_id
			end
		end

		test "should not create abstract with #{cu} login " <<
				"and invalid patid" do
			u = send(cu)
			login_as u
			post :create, :abstract => { :patid => 0 }
			assert_not_nil flash[:error]
			assert_response :success
			assert_template :new
		end

	end

end
