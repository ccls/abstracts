ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'test_help'

require 'partial_abstract_controller_test_helper'

class ActiveSupport::TestCase
	fixtures :all

	def create_case_subject_with_patid(patid)
		subject = create_subject( :subject_type => SubjectType['Case'] )
		Factory(:identifier,
			:subject => subject,
			:patid   => patid )
		subject
	end

end

class ActionController::TestCase
	setup :turn_https_on
end
