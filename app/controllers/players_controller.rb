class PlayersController < ApplicationController
	def index
		players = Player.all
		render json: players
	end

	def create
		player_new = Player.new(parametros)
		if player_new.save
			render json: "Se a creado un jugador"
		else
			render json: "No se a podido crear"
		end
	end

	def show
		player_find = Player.find(params[:id])
		render json: player_find
	end

	def update
		player_update = Player.update(params[:id], parametros)
		render json: player_update
	end

	def destroy
		player_find = Player.find(params[:id])
		player_delete = Player.delete(params[:id])
		render json: player_find
	end

	def parametros
		params.require(:player).permit(:name, :last_name, :email)
	end
end
