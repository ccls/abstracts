class User < Ccls::User

	%w(	abstracts bone_marrows checklists clinical_chemo_protocols cbcs cerebrospinal_fluids chest_imagings cytogenetics diagnoses discharges flow_cytometries histocompatibilities identifying_datas tdts therapy_responses names study_subjects ).each do |resource|
		alias_method "may_create_#{resource}?".to_sym,	:may_administrate?
		alias_method "may_read_#{resource}?".to_sym,		:may_administrate?
		alias_method "may_edit_#{resource}?".to_sym,		:may_administrate?
		alias_method "may_update_#{resource}?".to_sym,	:may_administrate?
		alias_method "may_destroy_#{resource}?".to_sym, :may_administrate?
	end

end
