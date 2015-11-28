class PokemonController < ApplicationController
	def capture
		puts params[:id]
		capturePoke = Pokemon.find(params[:id])
		capturePoke.trainer = current_trainer
		capturePoke.save
		redirect_to :root
	end
end
