class WeaponsController < ApplicationController
	def index
		weapons = Weapon.all
		render json: weapons
	end

	def create
		weapon_new = Weapon.new(parametros)
		if weapon_new.save
			render json: "Se creado un nuevo weapon"
		else
			render json: {message: "No se creo", error: weapon_new.full.errors.messages}
		end
	end

	def show
		weapon_find = Weapon.find(params[:id])
		render json: weapon_find
	end

	def update
		weapons_update = Weapons.update(params[:id], parametros)
		render json: weapons_update
	end

	def destroy
		weapon_find = Weapon.find(params[:id])
		weapon_delete = Weapon.delete(params[:id])
		render json: weapon_find
	end

	def parametros
		params.require(:weapon).permit(:name, :kind, :danger, :defense, :money, :character_id)
	end
end
