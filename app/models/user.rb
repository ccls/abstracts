class User < ActiveRecord::Base
	ucb_authenticated

#	defined in plugin/engine ...
#
#	def may_administrate?(*args)
#		(self.role_names & ['superuser','administrator']).length > 0
#	end
#
#	def may_read?(*args)
#		(self.role_names & 
#			['superuser','administrator','editor','interviewer','reader']
#		).length > 0
#	end
#
#	def may_edit?(*args)
#		(self.role_names & 
#			['superuser','administrator','editor']
#		).length > 0
#	end

	alias_method :may_create?,	:may_edit?
	alias_method :may_update?,	:may_edit?
	alias_method :may_destroy?, :may_edit?

#	alias_method :may_take_surveys?, :may_administrate?

	%w(	abstracts
			).each do |resource|
		alias_method "may_create_#{resource}?".to_sym,	:may_administrate?
		alias_method "may_read_#{resource}?".to_sym,		:may_administrate?
		alias_method "may_edit_#{resource}?".to_sym,		:may_administrate?
		alias_method "may_update_#{resource}?".to_sym,	:may_administrate?
		alias_method "may_destroy_#{resource}?".to_sym, :may_administrate?
	end


end
