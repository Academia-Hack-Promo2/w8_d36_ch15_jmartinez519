class MatchesController < ApplicationController
	def index
		matches = Match.all
		render json: matches
	end

	def create
		match_new = Match.new(parametros)
		if match_new.save
			render json: "Se creado un nuevo match"
		else
			render json: {message: "No se creo"}
		end
	end

	def show
		match_find = Match.find(params[:id])
		render json: match_find
	end

	def update
		match_update = Match.update(params[:id], parametros)
		render json: match_update
	end

	def destroy
		match_find = Match.find(params[:id])
		match_delete = Match.delete(params[:id])
		render json: match_find
	end

	def parametros
		params.require(:match).permit(:character1_id, :character2_id, :vitality1, :vitality2, :ganador, :retiro)
	end
end
