namespace :app do

	desc "Load some fixtures to database for application"
	task :update => :environment do
#			pages
		fixtures = %w(
			pages
			roles
		)
		ENV['FIXTURES'] = fixtures.join(',')
		puts "Loading fixtures for #{ENV['FIXTURES']}"
		Rake::Task["db:fixtures:load"].invoke
	end

	desc "Load some fixtures and users to database for application"
	task :setup => :update do
		Rake::Task["app:add_users"].invoke
		ENV['uid'] = '859908'
		Rake::Task["app:deputize"].invoke
		ENV['uid'] = '228181'
		Rake::Task["app:deputize"].reenable	#	<- this is stupid!
		Rake::Task["app:deputize"].invoke
	end

end
