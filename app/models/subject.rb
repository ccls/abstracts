class Subject < ActiveResource::Base
#	self.site = "https://apple:orange@ccls.berkeley.edu/homex"
	self.site = "https://dev.sph.berkeley.edu/api"
#	self.user = "admin"
#	self.password = "secret"
#	@headers = { 'calnetuid' => '859908' }

	@@config = YAML::load(ERB.new(
		IO.read('config/homex.yml')).result)

	self.user = @@config[:user]
	self.password = @@config[:password]

end
