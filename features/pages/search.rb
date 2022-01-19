class Search
	include Capybara::DSL
    include RSpec::Matchers

	def search_content(content_name)
        @content_name = content_name
        fill_in "search_query_top", with: @content_name
        find_button('submit_search').click
	end

    def click_on_first_product(content_name)
        find('ul.product_list.grid.row').first(:link, content_name).click
    end

    def verify_product_details(content_name)
        if expect(page.has_css?('.primary_block.row', wait: 5))
            expect(page.assert_selector('.price')).to eq true
            expect(page.assert_text(content_name)).to eq true
            expect(page.has_no_field?('.box-cart-bottom')).to eq true
        end
    end
end
