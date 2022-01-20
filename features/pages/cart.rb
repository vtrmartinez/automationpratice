class Cart
	include Capybara::DSL
    include RSpec::Matchers

    def add_to_cart
        within_frame(0) do
            click_on("Add to cart")
        end 
        # first button
        click_on("Proceed to checkout")
        # second button
        click_on("Proceed to checkout")
    end

end