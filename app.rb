require "sinatra"
require "sinatra/reloader" if development?

get '/random-cat' do
    @name =%w(Amigo Almon Misty).sample
    erb(:index)
end

get '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
end

get '/' do
    'Hello World!'
    end
get '/secret' do
    'Hello Secret World!'
end

get '/anothersecret' do
    'Hello Another Secret World!'
end

get '/say/*/to/*' do
    # matches /say/hello/to/world
    params['splat'] # => ["hello", "world"]
end

get '/hello/:name' do
    # matches "GET /hello/foo" and "GET /hello/bar"
    # params['name'] is 'foo' or 'bar'
    "Hello #{params['name']}!"
end

