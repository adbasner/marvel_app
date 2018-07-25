class Api::CharactersController < ApplicationController

	def index
		response = Unirest.get("https://gateway.marvel.com/v1/public/characters?ts=1&apikey=#{ENV['API_KEY']}&hash=183e1f1d800000dac65d24a131352360")
		@info = response.body
		@message = 'hello'
		render 'index.json.jbuilder'
	end
end
