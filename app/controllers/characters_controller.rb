class CharactersController < ApplicationController
	def index
		character = Character.all
		render json: character
	end

	def create
		character_new = Character.new(parametros)
		if character_new.save
			render json: "Se creado un nuevo character"
		else
			render json: {message: "No se creo", error: character_new.full.errors.messages}
		end
	end

	def show
		character_find = Character.find(params[:id])
		render json: character_find
	end

	def update
		character_update = Character.update(params[:id], parametros_update)
		render json: character_update
	end

	def destroy
		character_find = Character.find(params[:id])
		character_delete = Character.delete(params[:id])
		render json: character_find
	end

	def parametros
		params.require(:character).permit(:name, :kind_of_character, :age, :ability, :player_id)
	end

	def parametros_update
		params.require(:character).permit(:name, :age, :ability)
	end
end
