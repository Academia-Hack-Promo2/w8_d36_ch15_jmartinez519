class BodyArmorsController < ApplicationController
	def index
		body_armors = BodyArmor.all
		render json: body_armors
	end

	def create
		bodyarmors_new = BodyArmor.new(parametros)
		if bodyarmors_new.save
			render json: "Se creado un nuevo body armors"
		else
			render json: {message: "No se creo", error: bodyarmors_new.full.errors.messages}
		end
	end

	def show
		bodyarmors_find = Body_armor.find(params[:id])
		render json: bodyarmors_find
	end

	def update
		bodyarmors_update = Body_armor.update(params[:id], parametros)
		render json: bodyarmors_update
	end

	def destroy
		boydarmors_find = Body_armor.find(params[:id])
		bodyarmors_delete = Body_armor.delete(params[:id])
		render json: bodyarmors_find
	end

	def parametros
		params.require(:body_armor).permit(:name, :kind, :danger, :character_id, :character_name, :defense, :money)
	end
end
