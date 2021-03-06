ActionController::Routing::Routes.draw do |map|

#
#	from simply_authorized
#
#	map.resources :users, :only => [:destroy,:show,:index],
#		:collection => { :menu => :get } do |user|
#		user.resources :roles, :only => [:update,:destroy]
#	end


#	from calnet_authenticated
	map.logout 'logout', :controller => 'sessions', :action => 'destroy'
	map.resources :users, :only => [:destroy,:show,:index],
		:collection => { :menu => :get } do |user|
		user.resources :roles, :only => [:update,:destroy]
	end
	map.resource :session, :only => [ :destroy ]


#	most of these are pointless in this app
#	I should probably remove them from the gem's generator
#	from ccls_engine
#	map.connect 'stylesheets/:action.:format', :controller => 'stylesheets'
#	map.connect 'javascripts/:action.:format', :controller => 'javascripts'
#	map.resource  :calendar,   :only => [ :show ]
#	map.resources :races
#	map.resources :languages
#	map.resources :people
#	map.resources :refusal_reasons
#	map.resources :ineligible_reasons
#	map.resources :zip_codes, :only => [ :index ]




	map.resources :locales, :only => :show

	map.resources :pages, :collection => { 
		:all => :get,
#		:translate => :get,
		:order => :post }

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
	map.resources :study_subjects, :only => :index do |study_subject|
#		study_subject.resources :abstracts, :only => [:new,:create],
		study_subject.resources :abstracts, :only => [:create],
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
