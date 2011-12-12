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

	def abstract_pages(abstract)
		sections = Abstract.sections
		current_index = sections.find_index{|i| i[:controller] =~ /^#{controller.class.name}$/i }

		s = "<p class='center'>"
		s << (( !current_index.nil? && current_index > 0 ) ? "<span class='left'>" << 
				link_to( "&laquo; #{sections[current_index-1][:label]}", 
					send(sections[current_index-1][:show],abstract) ) << 
				"</span>" : '')
		s << link_to( "Back to Abstract", abstract_path(abstract) )
		s << (( !current_index.nil? && current_index < ( sections.length - 1 ) ) ? "" <<
				"<span class='right'>" << 
				link_to( "#{sections[current_index+1][:label]} &raquo;", 
					send(sections[current_index+1][:show],abstract) ) << 
				"</span>" : '' )
		s << "</p>"
	end

	def edit_link
		s =  "<p class='center'>"
#		s << "<span class='left'>#{controller.class.name.gsub(/Controller$/,'').singularize}</span>"
		s << link_to( "Edit", params.update(:action => 'edit'), :class => 'right button' )
		s << "</p>"
	end

#	def pos_neg_select(object_name, method, 
#			options={}, html_options={})
#		select(object_name, method,
#			[['Positive',1],['Negative',2]],
#			{:include_blank => true}.merge(options), html_options)
#	end

#<div class='tdt_positive_or_negative pos_neg_spans field_wrapper'>
#<span class='label'>Pos/Neg</span>
#<span class='value'>&nbsp;</span>
#</div><!-- class='tdt_positive_or_negative pos_neg_spans' -->
	def _wrapped_pos_neg_spans(object_name,method,options={})
		object = instance_variable_get("@#{object_name}")
		_wrapped_spans(object_name,method,options.update(
			:value => pos_neg(object.send(method)) ) )
	end

#<div class='tdt_positive_or_negative pos_neg_spans field_wrapper'>
#<label for="abstract_tdt_positive_or_negative">Pos/Neg</label><span class='label'>tdt_positive_or_negative</span>
#<span class='value'>&nbsp;</span>
#</div><!-- class='tdt_positive_or_negative pos_neg_spans' -->
#	def pos_neg_spans(object_name,method,options={})
#		object = instance_variable_get("@#{object_name}")
#		_wrapped_spans(object_name,method,options.update(
#			:value => pos_neg(object.send(method)) ) )
#	end

	def pos_neg(value)
		case value
			when 1   then 'Positive'
			when 2   then 'Negative'
			else '&nbsp;'
		end
	end

end


ActionView::Helpers::FormBuilder.class_eval do

	def submit_bar(controller=nil)
		s = "<div class='submit_bar'>"
		s << "<p class='submit_bar'>"
		s << @template.link_to( "Cancel and Show Section", 
			{ :action => 'show' }, { :class => 'button' } )
		s << "&nbsp;\n"
		s << submit_link_to( 'Save and Show Section',:name => nil )
		s << "</p>\n"
		sections = Abstract.sections
		ci = sections.find_index{|i| i[:controller] == controller }
		s << "<p class='submit_bar'>"
		s << (( !ci.nil? && ci > 0 ) ? 
			submit_link_to( "Save and Edit '#{sections[ci-1][:label]}'",
				:value => 'edit_previous') : '' )
		s << "&nbsp;\n"
		s << (( !ci.nil? && ci < ( sections.length - 1 ) ) ?
			submit_link_to( "Save and Edit '#{sections[ci+1][:label]}'",
				:value => 'edit_next') : '' )
		s << "</p>\n"
		s << "</div><!-- class='submit_bar' -->"
	end

#	def pos_neg_select(object_name, method, 
	def pos_neg_select(method, options={}, html_options={})
		@template.select(object_name, method,
			[['Positive',1],['Negative',2]],
			{:include_blank => true}.merge(options), html_options)
	end

end
