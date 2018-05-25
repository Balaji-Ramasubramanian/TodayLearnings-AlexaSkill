#!/usr/bin/env ruby
require 'sinatra'
require './reddit.rb'
require 'ralyxa'


post '/' do
	#Trigger the intent handler in ralyxa gem(specified in intents folder in this project)
	Ralyxa::Skill.handle(request)

end