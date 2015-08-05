require 'sinatra'
require 'json'

PINGS = []

post '/pings' do
  PINGS << {created_at: Time.now}
  {pong: true}.to_json
end

get '/pings' do
  PINGS.to_json
end
