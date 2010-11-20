module ApplicationHelper

	def application_root_menu(*args,&block)
		s = "<ul id='rootmenu'>\n"
		Page.roots.each do |page|
			s << "<li>" << link_to( page.menu(session[:locale]), 
				ActionController::Base.relative_url_root.to_s + page.path,
				:id => "menu_#{dom_id(page)}",
				:class => ((page == @page.try(:root))?'current':nil))
			s << "</li>\n"
		end
		s << (( block_given? )? capture(&block) : '')
		s << "</ul><!-- id='rootmenu' -->\n"
		( block_called_from_erb?(block) ) ? concat(s) : s
	end

#	#	NO SINGLE QUOTES OR CARRIAGE RETURNS(\n)
#	#	This output is passed through javascript
#	def application_user_menu
#		s = ''
#		if logged_in? and current_user.may_edit?
# 			s << "<ul id=\"PrivateNav\">"
# 			s << "<li>"  << link_to( "Pages", pages_path ) << "</li>"
# 			s << "<li>"  << link_to( "Photos", photos_path ) << "</li>"
# 			s << "<li>"  << link_to( "Users", users_path ) << "</li>"
# 			s << "<li>"  << link_to( "Documents", documents_path ) << "</li>"
# 			s << "<li>"  << link_to( "Logout", logout_path ) << "</li>"
# 			s << "</ul><!-- id=PrivateNav -->"
#		end
#		s
#	end


#	def mdy(date)
#		( date.nil? )?'&nbsp;':date.strftime("%m/%d/%Y")
#	end
#
#	def y_n_dk(value)
#		case value
#			when 1   then 'Yes'
#			when 2   then 'No'
#			when 999 then "Don't Know"
#			else '&nbsp;'
#		end
#	end
#
#	def _wrapped_y_n_dk_spans(object_name,method,options={})
#		object = instance_variable_get("@#{object_name}")
#		_wrapped_spans(object_name,method,options.update(
#			:value => y_n_dk(object.send(method)) ) )
#	end

	def abstract_pages(abstract)
		order = [
			['IdentifyingData', :abstract_identifying_data_path],
			['BoneMarrow', :abstract_bone_marrow_path],
			['FlowCytometry', :abstract_flow_cytometry_path],
			['TDT', :abstract_tdt_path],
			['Histocompatibility', :abstract_histocompatibility_path],
			['Cytogenetic', :abstract_cytogenetic_path],
			['CBC', :abstract_cbc_path],
			['CerebrospinalFluid', :abstract_cerebrospinal_fluid_path],
			['ChestImaging', :abstract_chest_imaging_path],
			['Discharge', :abstract_discharge_path],
			['ClinicalChemoProtocol', :abstract_clinical_chemo_protocol_path],
			['TherapyResponse', :abstract_therapy_response_path],
			['Diagnosis', :abstract_diagnosis_path],
			['Checklist', :abstract_checklist_path],
			['Name', :abstract_name_path]
		]
		current = controller.class.name.gsub(/Controller$/,'').singularize
		current_index = order.find_index{|i| i[0] =~ /^#{current}$/i }

		s = "<p class='center'>"
		if !current_index.nil? && current_index > 0
			s << "<span class='left'>"
			s << link_to( "&laquo; #{order[current_index-1][0]}", 
				send(order[current_index-1][1],abstract) )
			s << "</span>"
		end
		s << link_to( "Back to Abstract", abstract_path(abstract) )
		if !current_index.nil? && current_index < ( order.length - 1 )
			s << "<span class='right'>"
			s << link_to( "#{order[current_index+1][0]} &raquo;", 
				send(order[current_index+1][1],abstract) )
			s << "</span>"
		end
		s << "</p>"
	end

	def edit_link
		s =  "<p class='center'>"
#		s << "<span class='left'>#{controller.class.name.gsub(/Controller$/,'').singularize}</span>"
		s << link_to( "Edit", params.update(:action => 'edit'), :class => 'right' )
		s << "</p>"
	end

end
