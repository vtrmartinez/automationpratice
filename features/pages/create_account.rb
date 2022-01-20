class CreateAccount
	include Capybara::DSL
    include RSpec::Matchers

    def create_new_account
        fill_in "email_create", with: Faker::Internet.email
        click_on "Create an account"

        fill_in "customer_firstname", with: Faker::Name.first_name
        fill_in "customer_lastname", with: Faker::Name.last_name
        fill_in "passwd", with: Faker::Number.number(digits: 10)
        
        fill_in "address1", with: Faker::Address.street_address
        fill_in "city", with: Faker::Address.state
        find(:id, 'uniform-id_state').click
        find(:xpath, "//option[. = 'California']").click
        fill_in "postcode", with: Faker::Number.number(digits: 5)
        fill_in "city", with: Faker::Address.state
        fill_in "phone_mobile", with: "5511999999999"

        click_on "Register"
    end
end

