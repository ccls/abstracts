#if g = Gem.source_index.find_name('ccls-ccls_engine').last
#require 'ccls_engine'
#require g.full_gem_path + '/app/models/user'
#end
#
#User.class_eval do
#
##	User model
##class User < ActiveRecord::Base
##	ucb_authenticated
#
##	defined in plugin/engine ...
##
##	def may_administrate?(*args)
##		(self.role_names & ['superuser','administrator']).length > 0
##	end
##
##	def may_read?(*args)
##		(self.role_names & 
##			['superuser','administrator','editor','interviewer','reader']
##		).length > 0
##	end
##
##	def may_edit?(*args)
##		(self.role_names & 
##			['superuser','administrator','editor']
##		).length > 0
##	end
#
#	alias_method :may_create?,	:may_edit?
#	alias_method :may_update?,	:may_edit?
#	alias_method :may_destroy?, :may_edit?
#
#	alias_method :may_take_surveys?, :may_administrate?

class User < Ccls::User

	%w(	abstracts bone_marrows checklists clinical_chemo_protocols cbcs cerebrospinal_fluids chest_imagings cytogenetics diagnoses discharges flow_cytometries histocompatibilities identifying_datas tdts therapy_responses names subjects ).each do |resource|
		alias_method "may_create_#{resource}?".to_sym,	:may_administrate?
		alias_method "may_read_#{resource}?".to_sym,		:may_administrate?
		alias_method "may_edit_#{resource}?".to_sym,		:may_administrate?
		alias_method "may_update_#{resource}?".to_sym,	:may_administrate?
		alias_method "may_destroy_#{resource}?".to_sym, :may_administrate?
	end

	def to_s
		displayname
	end

end
