require "faker"
require "open-uri"
require "json"

user_serialized = URI.open("https://tmdb.lewagon.com/movie/top_rated").read
user = JSON.parse(user_serialized)
data = user['results']
url = "https://image.tmdb.org/t/p/w500"

data.each do |movie|
  Movie.create(title: movie["title"], overview: movie["overview"], poster_url: "#{url}#{movie["poster_path"]}", rating: movie["vote_average"])
  end
