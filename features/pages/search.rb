class Search
	include Capybara::DSL

	def search_content(content_name)
        fill_in "search_query_top", :with => content_name
        find_button('submit_search').click
	end
end
