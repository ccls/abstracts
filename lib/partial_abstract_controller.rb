module PartialAbstractController

	def self.included(base)
		base.permissive
		base.before_filter :set_page_title
		base.before_filter :valid_abstract_id_required
	end

	def update
		@abstract.update_attributes!(params[:abstract])
		flash[:notice] = "Abstract updated"
		sections = Abstract.sections
		ci = sections.find_index{|i| i[:controller] =~ /^#{self.class.name}$/i }
		if( params[:commit] == 'edit_next' && !ci.nil? && ci < ( sections.length - 1 ) )
			redirect_to send(sections[ci+1][:edit],@abstract)
		elsif( params[:commit] == 'edit_previous' && !ci.nil? && ci > 0 )
			redirect_to send(sections[ci-1][:edit],@abstract)
		else 
			redirect_to :action => 'show'
		end
	rescue ActiveRecord::RecordNotSaved, ActiveRecord::RecordInvalid
		flash.now[:error] = "Abstract update failed"
		render :action => 'edit'
	end

protected

	def set_page_title
		@page_title = "#{self.action_name.capitalize}: Abstract /" <<
			" #{Abstract.sections.find{|a|a[:controller] == self.class.name}[:label]}"
	end

end
