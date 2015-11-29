class PokemonsController < ApplicationController
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
		damagePoke.save
		puts damagePoke.trainer_id
		redirect_to damagePoke.trainer
	end

	def heal
		puts params[:id]
		healPoke = Pokemon.find(params[:id])
		healPoke.health += 10
		healPoke.save
		puts healPoke.trainer_id
		redirect_to healPoke.trainer
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
	@pokemon = Pokemon.create(pokemon_params)
	@pokemon.trainer = current_trainer
	@pokemon.health = 100
	@pokemon.level = 1
	if @pokemon.save #If saving the user was successful
	  redirect_to current_trainer  
	else
	  flash[:error] = @pokemon.errors.full_messages.to_sentence
	  redirect_to :new
	end
	
	end
	
	private
	def pokemon_params
	  params.require(:pokemon).permit(:name)
	end

end
