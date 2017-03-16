require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/numbers_to_words')


get('/') do
  erb(:form)
end

get('/answer') do
#binding.pry
  @word = params.fetch('word').upcase()
  @score = params.fetch('word').scrabble()
  erb(:score)
end
