require 'json'
require 'sinatra'
Dir["./app/*/*.rb"].each { |file| require file }

class App < Sinatra::Base
  get '/' do
    content_type :json, charset: 'utf-8'
    {}.to_json
  end
end

