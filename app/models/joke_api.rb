require 'net/http'

class JokeApi
  def self.get_random
    uri = URI('https://official-joke-api.appspot.com/random_joke')
    response = Net::HTTP.get(uri)
    json = JSON.parse(response)
    Joke.new(**json)
  end
end
