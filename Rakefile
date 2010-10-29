require(File.join(File.dirname(__FILE__), 'config', 'boot'))

#	Use the updated rdoc gem rather than version
#	included with ruby.
require 'rdoc'
require 'rdoc/rdoc'

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'tasks/rails'	#	self loading

#	condition added to allow clean 'rake gems:install'
if Gem.searcher.find('ccls_engine')
	require 'ccls_engine/tasks'
end

#	From script/generate simply_pages ...
require 'simply_pages/test_tasks'
#	From `script/generate calnet_authenticated` ...
require 'calnet_authenticated/test_tasks'
#	From `script/generate ccls_engine` ...
require 'ccls_engine/test_tasks'
#	From `script/generate simply_authorized` ...
require 'simply_authorized/test_tasks'
