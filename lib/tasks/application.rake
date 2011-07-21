namespace :app do

	desc "Load some fixtures to database for application"
	task :update => :environment do
		fixtures = %w(
			roles
		)
		ENV['FIXTURES'] = fixtures.join(',')
		puts "Loading fixtures for #{ENV['FIXTURES']}"
		Rake::Task["db:fixtures:load"].invoke
		Rake::Task["db:fixtures:load"].reenable
	end

	desc "Load some fixtures and users to database for application"
	task :setup => :update do
		Rake::Task["ccls:add_users"].invoke
		Rake::Task["ccls:add_users"].reenable
		ENV['uid'] = '859908'
		Rake::Task["ccls:deputize"].invoke
		Rake::Task["ccls:deputize"].reenable	#	<- this is stupid!
		ENV['uid'] = '228181'
		Rake::Task["ccls:deputize"].invoke
		Rake::Task["ccls:deputize"].reenable	#	<- this is stupid!
	end

	task :full_update => :setup do
		fixtures = %w(
			pages
		)
		ENV['FIXTURES'] = fixtures.join(',')
		ENV['FIXTURES_PATH'] = 'production/fixtures'
		puts "Loading production fixtures for #{ENV['FIXTURES']}"
		Rake::Task["db:fixtures:load"].invoke
		Rake::Task["db:fixtures:load"].reenable
	end

end
