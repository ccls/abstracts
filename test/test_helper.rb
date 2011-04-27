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

	def create_abstracts(count=0,options={})
		abstracts = []
		count.times{ abstracts.push(create_abstract(options)) }
		return abstracts
	end

	def create_abstract_with_first_name(first_name)
		subject  = create_subject_with_first_name(first_name)
		abstract = create_abstract
		subject.abstracts << abstract
		abstract
	end

	def create_abstract_with_last_name(last_name)
		subject  = create_subject_with_last_name(last_name)
		abstract = create_abstract
		subject.abstracts << abstract
		abstract
	end

	def create_abstract_with_childid(childid)
		subject  = create_subject_with_childid(childid)
		abstract = create_abstract
		subject.abstracts << abstract
		abstract
	end

	def create_abstract_with_patid(patid)
		subject  = create_subject_with_patid(patid)
		abstract = create_abstract
		subject.abstracts << abstract
		abstract
	end

end

class ActionController::TestCase
	setup :turn_https_on

	def self.site_administrators
		@site_administrators ||= %w( superuser administrator )
	end

	def self.site_editors
		@site_editors ||= %w( superuser administrator editor )
	end

	def self.site_readers
		@site_readers ||= %w( superuser administrator editor interviewer reader )
	end

end

ALL_TEST_ROLES = %w( superuser administrator editor interviewer reader active_user )

