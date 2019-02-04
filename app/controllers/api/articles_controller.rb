class Api::ArticlesController < ApplicationController

	def index
		@articles = HTTP.get("https://newsapi.org/v2/everything?q=#{params[:q]}&from=2019-01-04&sortBy=publishedAt&apiKey=#{ENV['API_KEY']}").parse["articles"]
		render 'index.json.jbuilder'
	end

end
