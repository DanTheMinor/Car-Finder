require('sinatra')
require('sinatra/reloader')
require('./lib/vehicle')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end
