require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/palindrome')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @input = params.fetch('input')
  if @input.palindrome()
    @results = "Yes, that's a palindrome!"
  else
    @results = "Too bad. That's not a palindrome."
  end
  erb(:results)
end
