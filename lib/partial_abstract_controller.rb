module PartialAbstractController

	def self.included(base)
		base.permissive
		base.before_filter :set_page_title
		base.before_filter :valid_abstract_id_required
	end

#	def show
#		@page_title = "Abstracts / #{page_title}"
#	end
#	
#	def edit
#		@page_title = "Edit: Abstracts / #{page_title}"
#	end

	def update
		@abstract.update_attributes!(params[:abstract])
		flash[:notice] = "Abstract updated"
		redirect_to :action => 'show'	#abstract_path(@abstract)
	rescue ActiveRecord::RecordNotSaved, ActiveRecord::RecordInvalid
		flash.now[:error] = "Abstract update failed"
		render :action => 'edit'
	end

protected

#	def page_title
#		self.class.name.gsub(/Controller$/,'').singularize
#	end

	def set_page_title
		@page_title = "#{self.action_name.capitalize}: Abstract /" <<
			" #{self.controller_name.singularize.titleize}"
	end

end
