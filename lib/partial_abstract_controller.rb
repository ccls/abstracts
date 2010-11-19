module PartialAbstractController

	def self.included(base)
		base.permissive
		base.before_filter :valid_abstract_id_required
	end
	
	def edit
	end

	def update
		@abstract.update_attributes!(params[:abstract])
		flash[:notice] = "Abstract updated"
		redirect_to abstract_path(@abstract)
	rescue ActiveRecord::RecordNotSaved, ActiveRecord::RecordInvalid
		flash.now[:error] = "Abstract update failed"
		render :action => 'edit'
	end

end
