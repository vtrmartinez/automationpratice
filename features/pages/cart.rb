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

    def finish_cart
        # first button after register
        click_on "Proceed to checkout"
        find("#uniform-cgv").click
        # second button after register
        click_on "Proceed to checkout"
        click_on "Pay by bank wire"
        click_on "I confirm my order"
    end

    def verify_order
        expect(page.assert_text("ORDER CONFIRMATION")).to eq true
        expect(page.assert_text("Your order on My Store is complete.")).to eq true
    end

end