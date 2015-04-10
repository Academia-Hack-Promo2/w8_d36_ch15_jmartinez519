class BodyArmorsController < ApplicationController
	def index
		body_armors = Body_armors.all
		render json: body_armors
	end

	def create
		bodyarmors_new = Body_armors.new(parametros)
		if bodyarmors_new.save
			render json: "Se creado un nuevo body armors"
		else
			render json: {message: "No se creo", error: bodyarmors_new.full.errors.messages}
		end
	end

	def show
		bodyarmors_find = Body_armors.find(params[:id])
		render json: bodyarmors_find
	end

	def update
		bodyarmors_update = Body_armors.update(params[:id], parametros)
		render json: bodyarmors_update
	end

	def destroy
		boydarmors_find = Body_armors.find(params[:id])
		bodyarmors_delete = Body_armors.delete(params[:id])
		render json: bodyarmors_find
	end

	def parametros
		params.require(:attack).permit(:name, :kind, :danger, :character, :character_id, :defense, :money)
	end
end
