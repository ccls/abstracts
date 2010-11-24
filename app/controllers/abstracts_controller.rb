class AbstractsController < ApplicationController

	before_filter :append_current_user_to_params, :only => :create

	resourceful

protected

	def append_current_user_to_params
		params[:abstract].merge!(:current_user => current_user)
	end

end
