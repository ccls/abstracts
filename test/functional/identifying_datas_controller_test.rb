# full path NEEDED for rake test:coverage to find test_helper
require File.dirname(__FILE__) + '/../test_helper'

class IdentifyingDatasControllerTest < ActionController::TestCase
	add_abstract_tests
end