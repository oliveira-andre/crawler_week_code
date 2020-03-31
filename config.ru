# frozen_string_literal: true

require 'rubygems'
require 'bundler'
Dir['./initializers/*.rb'].sort.each { |file| require file }

Bundler.require(:default, settings.env)

require './app'

run App
