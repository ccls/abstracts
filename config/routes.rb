ActionController::Routing::Routes.draw do |map|

	map.root :controller => "pages", :action => "show", :path => [""]

#	map.resource  :calendar,   :only => [ :show ]

#	map.resources :abstracts, :only => [:show,:index,:edit,:update,:destroy] do |abstract|
	map.resources :abstracts, :except => [:new,:create] do |abstract|
		abstract.resource :identifying_data, :only => [:edit,:update,:show]
		abstract.resource :bone_marrow, :only => [:edit,:update,:show]
		abstract.resource :cbc, :only => [:edit,:update,:show]
		abstract.resource :cerebrospinal_fluid, :only => [:edit,:update,:show]
		abstract.resource :checklist, :only => [:edit,:update,:show]
		abstract.resource :chest_imaging, :only => [:edit,:update,:show]
		abstract.resource :clinical_chemo_protocol, :only => [:edit,:update,:show]
		abstract.resource :cytogenetic, :only => [:edit,:update,:show]
		abstract.resource :diagnosis, :only => [:edit,:update,:show]
		abstract.resource :discharge, :only => [:edit,:update,:show]
		abstract.resource :flow_cytometry, :only => [:edit,:update,:show]
		abstract.resource :histocompatibility, :only => [:edit,:update,:show]
		abstract.resource :name, :only => [:edit,:update,:show]
		abstract.resource :tdt, :only => [:edit,:update,:show]
		abstract.resource :therapy_response, :only => [:edit,:update,:show]
	end

#	map.resources :subjects, :only => :index,
#		:member => { 
#			:compare => :get,
#			:merge => :post
#		}
	map.resources :subjects, :only => :index do |subject|
#		subject.resources :abstracts, :only => [:new,:create],
		subject.resources :abstracts, :only => [:create],
			:collection => { 
				:compare => :get,
				:merge => :post
			}
	end

#	map.resources :home_page_pics, :collection => { 
#		:random => :get,
#		:activate => :post }

	#	MUST BE LAST OR WILL BLOCK ALL OTHER ROUTES!
	#	catch all route to manage admin created pages.
	map.connect   '*path', :controller => 'pages', :action => 'show'

end
