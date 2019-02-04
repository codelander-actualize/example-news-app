json.array! @articles.each do |article|
	json.author article["author"]
	json.title article["title"]
	json.url article["url"]
end
