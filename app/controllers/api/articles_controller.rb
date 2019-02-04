class Api::ArticlesController < ApplicationController

	def index
		@articles = HTTP.headers({
			"X-Api-Key" => ENV["API_KEY"]
		}).get("https://newsapi.org/v2/everything?q=#{params[:q]}&from=2019-01-04&sortBy=publishedAt").parse["articles"]
		render 'index.json.jbuilder'
	end

end
