ActionController::Routing::Routes.draw do |map|

	map.root :controller => "pages", :action => "show", :path => [""]

	map.resource  :calendar,   :only => [ :show ]

	map.resources :abstracts do |abstract|
		abstract.resource :identifying
		abstract.resource :bone_marrow
		abstract.resource :cbc
		abstract.resource :cerebrospinal_fluid
		abstract.resource :checklist
		abstract.resource :chest_imaging
		abstract.resource :clinical_chemo_protocol
		abstract.resource :cytogenetic
		abstract.resource :diagnosis
		abstract.resource :discharge
		abstract.resource :flow_cytometry
		abstract.resource :histocompatibility
		abstract.resource :identifying
		abstract.resource :name
		abstract.resource :tdt
		abstract.resource :therapy_response
	end

#	map.resources :home_page_pics, :collection => { 
#		:random => :get,
#		:activate => :post }

	#	MUST BE LAST OR WILL BLOCK ALL OTHER ROUTES!
	#	catch all route to manage admin created pages.
	map.connect   '*path', :controller => 'pages', :action => 'show'

end
