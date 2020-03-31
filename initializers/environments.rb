# frozen_string_literal: true

require 'sinatra'

configure :development do
  set :env, :development
end

configure :test do
  set :env, :test
end

configure :production do
  set :env, :production
end
