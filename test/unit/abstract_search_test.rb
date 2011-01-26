require 'test_helper'

class AbstractSearchTest < ActiveSupport::TestCase

	test "should return AbstractSearch" do
		assert AbstractSearch().is_a?(AbstractSearch)
	end 

	test "should respond to search" do
		assert Abstract.respond_to?(:search)
	end

	test "should return Array" do
		abstracts = Abstract.search()
		assert abstracts.is_a?(Array)
	end

	test "should include abstract" do
		abstract = create_abstract
		#	there are already about 40 in the fixtures
		#	so we need to get more than that to include the last one.
		abstracts = Abstract.search(:per_page => 50)
		assert abstracts.include?(abstract)
	end

	test "should include abstract without pagination" do
		abstract = create_abstract
		abstracts = Abstract.search(:paginate => false)
		assert abstracts.include?(abstract)
	end

	test "should NOT order by bogus column with dir" do
		Abstract.destroy_all
		g1,g2,g3 = create_abstracts(3)
		abstracts = Abstract.search(
			:order => 'whatever', :dir => 'asc')
		assert_equal [g1,g2,g3], abstracts
	end

	test "should NOT order by bogus column" do
		Abstract.destroy_all
		g1,g2,g3 = create_abstracts(3)
		abstracts = Abstract.search(:order => 'whatever')
		assert_equal [g1,g2,g3], abstracts
	end

#	test "should order by id asc by default" do
#		Abstract.destroy_all
#		g1,g2,g3 = create_abstracts_with_childids(9,3,6)
#		abstracts = Abstract.search(
#			:order => 'id')
#		assert_equal [g1,g2,g3], abstracts
#	end
#
#	test "should order by id asc" do
#		Abstract.destroy_all
#		g1,g2,g3 = create_abstracts_with_childids(9,3,6)
#		abstracts = Abstract.search(
#			:order => 'id', :dir => 'asc')
#		assert_equal [g1,g2,g3], abstracts
#	end
#
#	test "should order by id desc" do
#		Abstract.destroy_all
#		g1,g2,g3 = create_abstracts_with_childids(9,3,6)
#		abstracts = Abstract.search(
#			:order => 'id', :dir => 'desc')
#		assert_equal [g3,g2,g1], abstracts
#	end
#
#	test "should include abstract by q first_name" do
#		g1,g2 = create_abstracts_with_first_names('Michael','Bob')
#		abstracts = Abstract.search(:q => 'mi ch ha')
#		assert  abstracts.include?(g1)
#		assert !abstracts.include?(g2)
#	end
#
#	test "should include abstract by q last_name" do
#		g1,g2 = create_abstracts_with_last_names('Michael','Bob')
#		abstracts = Abstract.search(:q => 'cha ael')
#		assert  abstracts.include?(g1)
#		assert !abstracts.include?(g2)
#	end
#
#	test "should include abstract by q childid" do
#		g1,g2 = create_abstracts_with_childids(999999,'1')
#		abstracts = Abstract.search(:q => g1.subject.identifier.childid)
#		assert  abstracts.include?(g1)
#		assert !abstracts.include?(g2)
#	end
#
#	test "should include abstract by q patid" do
#		g1,g2 = create_abstracts_with_patids(999999,'1')
#		abstracts = Abstract.search(:q => g1.subject.identifier.patid)
#		assert  abstracts.include?(g1)
#		assert !abstracts.include?(g2)
#	end
#
#	test "should include abstract by q number" do
#		g1,g2 = create_abstracts_with_numbers('9999','1111')
#		abstracts = Abstract.search(:q => g1.number)
#		assert  abstracts.include?(g1)
#		assert !abstracts.include?(g2)
#	end

end
