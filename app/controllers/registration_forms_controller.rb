class RegistrationFormsController < ApplicationController
	def new

	end

	def show
		@registration_form=RegistrationForm.find(params[:id])
	end

	def create
		@registration_form=RegistrationForm.new(registration_params)
		@registration_form.save
		if RegistrationForm.find_by_email(@registration_form.email).password==@registration_form.password
			if @registration_form.email=="vandana.kalipatnapu@gmail.com"
					render 'show'
				else
					render 'index',:notice => "thank you"
			end
			
			else
				 render 'index'
		end
		
	end

	private
		def registration_params
			params.require(:registration_form).permit(:name,:email,:password,:rollno,:phno,:address,
				           :gender,:qualification=>[])
		end
end
