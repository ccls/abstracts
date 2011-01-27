if g = Gem.source_index.find_name('ccls-ccls_engine').last
require 'ccls_engine'
require g.full_gem_path + '/app/models/subject_search'
end

SubjectSearch.class_eval do

	self.valid_orders.merge!({
		:abstracts_count => nil,
		#	NEEDED to remove ambiguouty from possible recalled sort id column
		#	other items are sortable by id and have no joins.
		#	SubjectSearch can have many joins, meaning many id
		#	This will be added to ccls_engine version so
		#	can be removed in the future
		:id => 'subjects.id'	
	})
	self.searchable_attributes += [ :abstracts_count ] 
	self.attr_accessors += [ :abstracts_count ]

private #	REQUIRED!

	def abstracts_count_conditions
		unless @abstracts_count.blank?
			case @abstracts_count.to_s
				when '0' then ["abstracts_count <= 0"]
				when '1' then ["abstracts_count = 1"]
				when '2' then ["abstracts_count >= 2"]
			end
		end
	end

end
