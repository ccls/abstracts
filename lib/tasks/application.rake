namespace :app do

	desc "Load some fixtures to database for application"
	task :update => :environment do
		fixtures = %w(
			roles
		)
		ENV['FIXTURES'] = fixtures.join(',')
		puts "Loading fixtures for #{ENV['FIXTURES']}"
		Rake::Task["db:fixtures:load"].invoke
	end

	desc "DEPRECATING: Load some fixtures and users to database for application"
	task :setup => :update do
		Rake::Task["ccls:add_users"].invoke
		ENV['uid'] = '859908'
		Rake::Task["ccls:deputize"].invoke
		ENV['uid'] = '228181'
		Rake::Task["ccls:deputize"].reenable	#	<- this is stupid!
		Rake::Task["ccls:deputize"].invoke
	end

	task :full_update => :update do
		fixtures = %w(
			users
			pages
		)
		ENV['FIXTURES'] = fixtures.join(',')
		ENV['FIXTURES_PATH'] = 'production/fixtures'
		puts "Loading production fixtures for #{ENV['FIXTURES']}"
		Rake::Task["db:fixtures:load"].invoke
		Rake::Task["db:fixtures:load"].reenable
		User.all.each do |user|
			User.find_create_and_update_by_uid(user.uid)
		end
		User.find_by_uid('859908').deputize
		User.find_by_uid('228181').deputize
	end

end
