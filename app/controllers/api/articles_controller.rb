class Api::ArticlesController < ApplicationController

	def index
		@articles = HTTP.get("https://newsapi.org/v2/everything?q=#{params[:q]}&from=2019-01-04&sortBy=publishedAt&apiKey=eda1b96b200f466b8bce1df354d74871").parse["articles"]
		render 'index.json.jbuilder'
	end

end
