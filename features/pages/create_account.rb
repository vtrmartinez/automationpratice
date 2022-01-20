class CreateAccount
	include Capybara::DSL
    include RSpec::Matchers

    def create_new_account
        fill_in "email_create", with: Faker::Internet.email
        binding.pry
    end

end

