module PartialAbstractControllerTestHelper

	def self.included(base)
		base.extend(Tests)
	end

	def factory_attributes(options={})
		Factory.attributes_for(:abstract,options)
	end

	module Tests
	
		def add_abstract_tests

			#	no route
			assert_no_route(:get,:index)

			#	no abstract_id
			assert_no_route(:get,:show)	
			assert_no_route(:get,:new)
			assert_no_route(:post,:create)
			assert_no_route(:get,:edit)
			assert_no_route(:put,:update)
			assert_no_route(:delete,:destroy)

			site_administrators.each do |cu|
			
				test "should show with #{cu} login" do
					abstract = create_abstract
					login_as send(cu)
					get :show, :abstract_id => abstract.id
					assert assigns(:abstract)
					assert_response :success
					assert_template 'show'
				end
			
				test "should NOT show with invalid abstract_id " <<
						"and #{cu} login" do
					login_as send(cu)
					get :show, :abstract_id => 0
					assert_not_nil flash[:error]
					assert_redirected_to abstracts_path
				end
			
				test "should edit with #{cu} login" do
					abstract = create_abstract
					login_as send(cu)
					get :edit, :abstract_id => abstract.id
					assert assigns(:abstract)
					assert_response :success
					assert_template 'edit'
				end
			
				test "should NOT edit with invalid " <<
						"abstract_id and #{cu} login" do
					login_as send(cu)
					get :edit, :abstract_id => 0
					assert_redirected_to abstracts_path
				end
			
				test "should update with #{cu} login" do
					abstract = create_abstract
					login_as send(cu)
					put :update, :abstract_id => abstract.id,
						:abstract => factory_attributes
					assert assigns(:abstract)
					assert_redirected_to :action => 'show'	#abstract_path(abstract)
				end
			
				test "should NOT update with invalid " <<
						"abstract_id and #{cu} login" do
					login_as send(cu)
					put :update, :abstract_id => 0,
						:abstract => factory_attributes
					assert_redirected_to abstracts_path
				end

				test "should NOT update with #{cu} " <<
						"login when update fails" do
					abstract = create_abstract(:updated_at => Chronic.parse('yesterday'))
					Abstract.any_instance.stubs(:create_or_update).returns(false)
					login_as send(cu)
					deny_changes("Abstract.find(#{abstract.id}).updated_at") {
						put :update, :abstract_id => abstract.id,
							:abstract => factory_attributes
					}
					assert assigns(:abstract)
					assert_response :success
					assert_template 'edit'
					assert_not_nil flash[:error]
				end

				test "should NOT update with #{cu} " <<
						"login and invalid abstract" do
					abstract = create_abstract(:updated_at => Chronic.parse('yesterday'))
					Abstract.any_instance.stubs(:valid?).returns(false)
					login_as send(cu)
					deny_changes("Abstract.find(#{abstract.id}).updated_at") {
						put :update, :abstract_id => abstract.id,
							:abstract => factory_attributes
					}
					assert assigns(:abstract)
					assert_response :success
					assert_template 'edit'
					assert_not_nil flash[:error]
				end

			end
			
			non_site_administrators.each do |cu|
			
				test "should NOT show with #{cu} login" do
					abstract = create_abstract
					login_as send(cu)
					get :show, :abstract_id => abstract.id
					assert_not_nil flash[:error]
					assert_redirected_to root_path
				end
			
				test "should NOT show with invalid abstract_id " <<
						"and #{cu} login" do
					login_as send(cu)
					get :show, :abstract_id => 0
					assert_not_nil flash[:error]
					assert_redirected_to root_path
				end
			
				test "should NOT edit with #{cu} login" do
					abstract = create_abstract
					login_as send(cu)
					get :edit, :abstract_id => abstract.id
					assert_not_nil flash[:error]
					assert_redirected_to root_path
				end
			
				test "should NOT edit with invalid " <<
						"abstract_id and #{cu} login" do
					abstract = create_abstract
					login_as send(cu)
					get :edit, :abstract_id => 0
					assert_not_nil flash[:error]
					assert_redirected_to root_path
				end
			
				test "should NOT update with #{cu} login" do
					abstract = create_abstract
					login_as send(cu)
					put :update, :abstract_id => abstract.id,
						:abstract => factory_attributes
					assert_not_nil flash[:error]
					assert_redirected_to root_path
				end
			
				test "should NOT update with invalid " <<
						"abstract_id and #{cu} login" do
					login_as send(cu)
					put :update, :abstract_id => 0,
						:abstract => factory_attributes
					assert_not_nil flash[:error]
					assert_redirected_to root_path
				end
			
			end
	
			test "should NOT show without login" do
				abstract = create_abstract
				get :show, :abstract_id => abstract.id
				assert_redirected_to_login
			end
		
			test "should NOT show with invalid abstract_id " <<
					"and without login" do
				get :show, :abstract_id => 0
				assert_redirected_to_login
			end
		
			test "should NOT edit without login" do
				abstract = create_abstract
				get :edit, :abstract_id => abstract.id
				assert_redirected_to_login
			end
		
			test "should NOT edit with invalid " <<
					"abstract_id and without login" do
				get :edit, :abstract_id => 0
				assert_redirected_to_login
			end
		
			test "should NOT update without login" do
				abstract = create_abstract
				put :update, :abstract_id => abstract.id,
					:abstract => factory_attributes
				assert_redirected_to_login
			end
		
			test "should NOT update with invalid " <<
					"abstract_id and without login" do
				put :update, :abstract_id => 0,
					:abstract => factory_attributes
				assert_redirected_to_login
			end
		end	#	add_abstract_tests
	end	#	Tests
end	#	PartialAbstractControllerTestHelper
ActionController::TestCase.send(:include,PartialAbstractControllerTestHelper)
