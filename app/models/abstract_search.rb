# don't know exactly
class AbstractSearch < Search

	self.searchable_attributes += [ :q, :merged ]

	self.valid_orders.merge!({
#		:childid => 'identifiers.childid',
#		:last_name => 'piis.last_name',
#		:first_name => 'piis.first_name',
#		:studyid => 'identifiers.patid',
		:id => 'abstracts.id'
	})

	def abstracts
		require_dependency 'pii.rb'	
		require_dependency 'identifier.rb'
		@abstracts ||= Abstract.send(
			(paginate?)?'paginate':'all',{
#	we can't really do an include across multiple databases if we are querying
#	It might work if the databases were the same, 
#	but here one is sqlite3 and the other is mysql
#	resulting in incorrect quoting
#	SELECT * FROM `subjects` WHERE (`subjects`."id" = 7) 
#				:include => [:subject => [:identifier,:pii]],
				:order => search_order,
				:joins => joins,
				:conditions => conditions
			}.merge(
				(paginate?)?{
					:per_page => per_page||25,
					:page     => page||1
				}:{}
			)
		)
	end

private	#	THIS IS REQUIRED

	def merged_conditions

		return nil
	end

#	def q_conditions
#		unless q.blank?
#			c = []
#			v = {}
#			q.to_s.split(/\s+/).each_with_index do |t,i|
##				c.push("abstracts.number LIKE :t#{i}")
#				c.push("piis.first_name LIKE :t#{i}")
#				c.push("piis.last_name LIKE :t#{i}")
#				c.push("identifiers.patid LIKE :t#{i}")
#				c.push("identifiers.childid LIKE :t#{i}")
#				v["t#{i}".to_sym] = "%#{t}%"
#			end
#			[ "( #{c.join(' OR ')} )", v ]
#		end
#	end


	#	Certainly not the fastest way, but quite possibly the only way
	#	to search against subjects being in a separate database.
	def subjects_conditions
		unless q.blank?
			subjects = Subject.search(:q => q, :paginate => false)
			subject_ids = subjects.collect(&:id)
			['abstracts.subject_id IN (:subject_ids)', { :subject_ids => subject_ids } ]
		end
	end

#	def subjects_joins
#		"LEFT JOIN subjects ON abstracts.study_subject_id = subjects.id " <<
#			"LEFT JOIN piis ON piis.study_subject_id = subjects.id " <<
#			"LEFT JOIN identifiers ON identifiers.study_subject_id = subjects.id"
#	end

#	#	must come before other subject related joins
#	def a_subjects_joins
#		"LEFT JOIN subjects ON abstracts.study_subject_id = subjects.id" if(
#			%w(childid studyid last_name first_name).include?(@order) )
#	end
#
#	def identifiers_joins
#		"LEFT JOIN identifiers ON identifiers.study_subject_id = subjects.id" if (
#			%w(childid studyid).include?(@order) )
#	end
#
#	def piis_joins
#		"LEFT JOIN piis ON piis.study_subject_id = subjects.id" if (
#			%w(last_name first_name).include?(@order) )
#	end

end
