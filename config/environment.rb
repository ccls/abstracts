# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.11' unless defined? RAILS_GEM_VERSION

#ENV['RAILS_ENV'] ||= 'production'

#	In production, using script/console does not properly
#	set a GEM_PATH, so gems aren't loaded correctly.
if ENV['RAILS_ENV'] == 'production'
ENV['GEM_PATH'] = File.expand_path(File.join(File.dirname(__FILE__),'..','gems'))
end

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

#	This constant is used in the ucb_ccls_engine#Document
#	and other places like Amazon buckets
#	for controlling the path to documents.
RAILS_APP_NAME = 'abstracts'

#	Why?
#	Why do I NEED to require i18n here and nowhere else? Why? Why? Why?!  WTF
#	What happened and where?  This app hasn't changed in about a month.
#	Homex and ODMS work fine.?  WTF?
#	I don't need it with script/server as it runs fine, but script/console
#		and testing ....
#/Library/Ruby/Gems/1.8/gems/activerecord-2.3.11/lib/active_record.rb:83: uninitialized constant I18n (NameError)
#	from /Library/Ruby/Site/1.8/rubygems/custom_require.rb:54:in `gem_original_require'
#	from /Library/Ruby/Site/1.8/rubygems/custom_require.rb:54:in `require'
#	from /Library/Ruby/Gems/1.8/gems/rails-2.3.11/lib/initializer.rb:268:in `require_frameworks'
#	from /Library/Ruby/Gems/1.8/gems/rails-2.3.11/lib/initializer.rb:268:in `each'
#	from /Library/Ruby/Gems/1.8/gems/rails-2.3.11/lib/initializer.rb:268:in `require_frameworks'
#	from /Library/Ruby/Gems/1.8/gems/rails-2.3.11/lib/initializer.rb:134:in `process'
#	from /Library/Ruby/Gems/1.8/gems/rails-2.3.11/lib/initializer.rb:113:in `send'
#	from /Library/Ruby/Gems/1.8/gems/rails-2.3.11/lib/initializer.rb:113:in `run'
#	from /Users/jakewendt/github_repo/ccls/abstracts/config/environment.rb:22
#	from /Library/Ruby/Site/1.8/rubygems/custom_require.rb:36:in `gem_original_require'
#	from /Library/Ruby/Site/1.8/rubygems/custom_require.rb:36:in `require'
#	from ./test/test_helper.rb:2
#	from /Library/Ruby/Site/1.8/rubygems/custom_require.rb:36:in `gem_original_require'
#	from /Library/Ruby/Site/1.8/rubygems/custom_require.rb:36:in `require'
#	from ./test/functional/histocompatibilities_controller_test.rb:1
#	from /Library/Ruby/Site/1.8/rubygems/custom_require.rb:36:in `gem_original_require'
#	from /Library/Ruby/Site/1.8/rubygems/custom_require.rb:36:in `require'
#	from -e:1
#
require 'i18n'

Rails::Initializer.run do |config|

	if RUBY_PLATFORM =~ /java/
		config.gem 'activerecord-jdbcsqlite3-adapter',
			:lib => 'active_record/connection_adapters/jdbcsqlite3_adapter'
		config.gem 'activerecord-jdbcmysql-adapter',
			:lib => 'active_record/connection_adapters/jdbcmysql_adapter'
		config.gem 'jdbc-mysql', :lib => 'jdbc/mysql'
		config.gem 'jdbc-sqlite3', :lib => 'jdbc/sqlite3'
		config.gem 'jruby-openssl', :lib => 'openssl'
	else
		config.gem 'mysql'
		config.gem "sqlite3"
	end

	#	due to some enhancements, the db gems MUST come first
	#	for use in the jruby environment.
	config.gem 'ccls-ccls_engine'
	config.gem 'jakewendt-simply_authorized'
	config.gem 'jakewendt-simply_pages'

	#	require it, but don't load it
	config.gem 'jakewendt-rdoc_rails', :lib => false

	config.gem "chronic"   #		http://chronic.rubyforge.org/
	config.gem 'will_paginate'
	config.gem 'fastercsv'
	config.gem 'hpricot'

	# config.plugins = [ :exception_notification, :ssl_requirement, :all ]

	config.frameworks -= [ :active_resource ]

	# Set Time.zone default to the specified zone and make Active Record 
	#	auto-convert to this zone.
	# Run "rake -D time" for a list of tasks for finding time zone names.
	config.time_zone = 'UTC'

end

#	don't use the default div wrappers as they muck up style
#	just adding a class to the tag is a little better
require 'hpricot'
ActionView::Base.field_error_proc = Proc.new { |html_tag, instance| 
	error_class = 'field_error'
	nodes = Hpricot(html_tag)
	nodes.each_child { |node| 
		node[:class] = node.classes.push(error_class).join(' ') unless !node.elem? || node[:type] == 'hidden' || node.classes.include?(error_class) 
	}
	nodes.to_html
}

