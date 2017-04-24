require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('./**/*.rb')

get('/') do
  erb(:index)
end

get('/triangle') do
  @answer = "Hi"
  erb(:result)
end
