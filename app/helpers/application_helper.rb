module ApplicationHelper

	def application_root_menu(*args,&block)
		s = "<ul id='rootmenu'>\n"
		Page.roots.each do |page|
			next if page.path == '/'
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

			['Cytogenetics', :abstract_cytogenetic_path],
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
		s << (( !current_index.nil? && current_index > 0 ) ? "<span class='left'>" << 
				link_to( "&laquo; #{order[current_index-1][0]}", 
					send(order[current_index-1][1],abstract) ) << 
				"</span>" : '')
		s << link_to( "Back to Abstract", abstract_path(abstract) )
		s << (( !current_index.nil? && current_index < ( order.length - 1 ) ) ? "" <<
				"<span class='right'>" << 
				link_to( "#{order[current_index+1][0]} &raquo;", 
					send(order[current_index+1][1],abstract) ) << 
				"</span>" : '' )
		s << "</p>"
	end

	def edit_link
		s =  "<p class='center'>"
#		s << "<span class='left'>#{controller.class.name.gsub(/Controller$/,'').singularize}</span>"
		s << link_to( "Edit", params.update(:action => 'edit'), :class => 'right button' )
		s << "</p>"
	end

	def pos_neg_select(object_name, method, 
			options={}, html_options={})
		select(object_name, method,
			[['Positive',1],['Negative',2]],
			{:include_blank => true}.merge(options), html_options)
	end

	def _wrapped_pos_neg_spans(object_name,method,options={})
		object = instance_variable_get("@#{object_name}")
		_wrapped_spans(object_name,method,options.update(
			:value => pos_neg(object.send(method)) ) )
	end

	def pos_neg(value)
		case value
			when 1   then 'Positive'
			when 2   then 'Negative'
			else '&nbsp;'
		end
	end

	#	&uarr; and &darr;
	def sort_link(column,text=nil)
		order = column.to_s.downcase.gsub(/\s+/,'_')
		dir = ( params[:dir] && params[:dir] == 'asc' ) ? 'desc' : 'asc'
		link_text = text||column
		classes = []	#[order]
		arrow = ''
		if params[:order] && params[:order] == order
			classes.push('sorted')
			arrow = if dir == 'desc'
				"<span class='arrow'>&darr;</span>"
			else
				"<span class='arrow'>&uarr;</span>"
			end
		end
		s = "<div class='#{classes.join(' ')}'>"
		s << link_to(link_text,params.merge(:order => order,:dir => dir))
		s << arrow unless arrow.blank?
		s << "</div>"
		s
	end

end


ActionView::Helpers::FormBuilder.class_eval do

	def submit_bar()
		s = "<p class='submit_bar'>"
 		s << @template.link_to( "Cancel", { :action => 'show' }, { :class => 'button' } )
		s << "&nbsp;\n"
		s << @template.submit_link_to( 'Save Changes',:name => nil )
		s << "</p>"
	end

end
