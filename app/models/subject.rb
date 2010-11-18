class Subject < ActiveResource::Base
#	self.site = "https://ccls.berkeley.edu/homex/api"
	self.site = "https://dev.sph.berkeley.edu/api"

	@@config = YAML::load(ERB.new(
		IO.read('config/homex.yml')).result)

	self.user = @@config[:user]
	self.password = @@config[:password]

end
