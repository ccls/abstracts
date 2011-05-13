require 'test_helper'

class AbstractsControllerTest < ActionController::TestCase

	ASSERT_ACCESS_OPTIONS = {
		:model => 'Abstract',
#		:actions => [:new,:create,:edit,:update,:show,:destroy,:index],
#		:actions => [:edit,:update,:show,:destroy,:index],
		:actions => [:edit,:update,:show,:destroy,:index],
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
		:logins => ( all_test_roles - site_administrators ) })
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

	assert_no_route(:get,:new)
	assert_no_route(:post,:create)

	setup :create_case_subject

	site_administrators.each do |cu|

		test "should NOT create abstract without subject_id with #{cu} login" do
pending
		end
			
		test "should set entry_1_by_uid on creation with #{cu} login" <<
				" without abstract hash" do
			u = send(cu)
			login_as u
			post :create, :subject_id => @subject.id
			assert assigns(:abstract)
			assert_equal u.uid, assigns(:abstract).entry_1_by_uid
		end

		test "should set entry_1_by_uid on creation with #{cu} login" do
			u = send(cu)
			login_as u
			post :create, :subject_id => @subject.id,
				:abstract => factory_attributes
			assert assigns(:abstract)
			assert_equal u.uid, assigns(:abstract).entry_1_by_uid
		end

		test "should set entry_1_by on creation if subject's first abstract " <<
				"with #{cu} login" do
			u = send(cu)
			login_as u
			assert_difference('Abstract.count',1) {
				post :create, :subject_id => @subject.id,
					:abstract => factory_attributes
			}
			assert assigns(:abstract)
			assert_equal u, assigns(:abstract).entry_1_by
		end

		test "should set entry_2_by on creation if subject's second abstract " <<
				"with #{cu} login" do
			u = send(cu)
			login_as u
			Factory(:abstract, :subject => @subject)
			assert_difference('Abstract.count',1) {
				post :create, :subject_id => @subject.id,
					:abstract => factory_attributes
			}
			assert assigns(:abstract)
			assert_equal u, assigns(:abstract).entry_2_by
		end

		test "should NOT get compare if subject only has 0 abstract with #{cu} login" do
			u = send(cu)
			login_as u
			get :compare, :subject_id => @subject.id
			assert_redirected_to root_path
		end

		test "should NOT get compare if subject only has 1 abstract with #{cu} login" do
			u = send(cu)
			login_as u
			Factory(:abstract, :subject => @subject)
			get :compare, :subject_id => @subject.id
			assert_redirected_to root_path
		end

		test "should get compare if subject has 2 abstracts with #{cu} login" do
			u = send(cu)
			login_as u
			Factory(:abstract, :subject => @subject)
			Factory(:abstract, :subject => @subject.reload)
			get :compare, :subject_id => @subject.id
			assert assigns(:abstracts)
		end

		test "should NOT merge if subject only has 0 abstract with #{cu} login" do
			u = send(cu)
			login_as u
			post :merge, :subject_id => @subject.id
			assert_redirected_to root_path
		end

		test "should NOT merge if subject only has 1 abstract with #{cu} login" do
			u = send(cu)
			login_as u
			Factory(:abstract, :subject => @subject)
			post :merge, :subject_id => @subject.id
			assert_redirected_to root_path
		end

		test "should set merged_by on merge of subject's abstracts with #{cu} login" do
			u = send(cu)
			login_as u
			Factory(:abstract, :subject => @subject)
			Factory(:abstract, :subject => @subject.reload)
#			assert_difference('Abstract.count', -1) {
				post :merge, :subject_id => @subject.id
#			}
			assert assigns(:abstracts)
pending
#			assert assigns(:abstract)
#			assert !assigns(:abstracts).include?(assigns(:abstract))
#			assert_equal u, assigns(:abstract).merged_by
			assert_redirected_to root_path
		end

		test "should merge subject's abstracts with #{cu} login" do
pending
		end

		test "should remove subject's initial abstracts on merge with #{cu} login" do
pending
		end

		test "should copy subject's initial entry_by's on merge with #{cu} login" do
pending
		end

	end


	non_site_administrators.each do |cu|

		test "should NOT create abstract with #{cu} login" do
			u = send(cu)
			login_as u
			assert_difference('Abstract.count',0) do
				post :create, :subject_id => @subject.id
			end
			assert_not_nil flash[:error]
			assert_redirected_to root_path
		end

		test "should NOT compare abstracts with #{cu} login" do
			u = send(cu)
			login_as u
			Factory(:abstract, :subject => @subject)
			Factory(:abstract, :subject => @subject.reload)
			get :compare, :subject_id => @subject.id
			assert_not_nil flash[:error]
			assert_redirected_to root_path
		end

		test "should NOT merge abstracts with #{cu} login" do
			u = send(cu)
			login_as u
			Factory(:abstract, :subject => @subject)
			Factory(:abstract, :subject => @subject.reload)
			post :merge, :subject_id => @subject.id
			assert_not_nil flash[:error]
			assert_redirected_to root_path
		end

	end

	test "should NOT create abstract without login" do
		assert_difference('Abstract.count',0) do
			post :create, :subject_id => @subject.id
		end
		assert_redirected_to_login
	end

	test "should NOT compare abstracts without login" do
		Factory(:abstract, :subject => @subject)
		Factory(:abstract, :subject => @subject.reload)
		get :compare, :subject_id => @subject.id
		assert_redirected_to_login
	end

	test "should NOT merge abstracts without login" do
		Factory(:abstract, :subject => @subject)
		Factory(:abstract, :subject => @subject.reload)
		post :merge, :subject_id => @subject.id
		assert_redirected_to_login
	end

protected

	def create_case_subject
		@subject = Factory(:case_subject)
	end

end
