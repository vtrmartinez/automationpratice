class Home
	include Capybara::DSL

	def url
		visit ENVIRONMENT['HOME']
	end
end
