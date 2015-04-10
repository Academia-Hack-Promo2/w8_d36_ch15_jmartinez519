class AttacksController < ApplicationController
	def index
		attacks = Attack.all
		render json: attacks
	end

	def create
		attack_new = Attack.new(parametros)
		if attack_new.save
			render json: "Se creado un nuevo attack"
		else
			render json: {message: "No se creo", error: attack_new.full.errors.messages}
		end
	end

	def show
		attack_find = Attack.find(params[:id])
		render json: attack_find
	end

	def update
		attack_update = Attack.update(params[:id], parametros)
		render json: attack_update
	end

	def destroy
		attack_find = Attack.find(params[:id])
		attack_delete = Attack.delete(params[:id])
		render json: attack_find
	end

	def parametros
		params.require(:attack).permit(:name, :kind, :danger, :character, :weapon_id, :character_id)
	end
end
