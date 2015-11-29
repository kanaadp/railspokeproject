class PokemonController < ApplicationController
	def capture
		puts params[:id]
		capturePoke = Pokemon.find(params[:id])
		capturePoke.trainer = current_trainer
		capturePoke.save
		redirect_to :root
	end

	def damage
		puts params[:id]
		damagePoke = Pokemon.find(params[:id])
		damagePoke.health -= 10
		
		if damagePoke.health <= 0
			damagePoke.destroy
		else
			damagePoke.save
		end
		puts damagePoke.trainer_id
		redirect_to "/trainers/#{damagePoke.trainer_id}"
	end
end
