class RegistrationFormsController < ApplicationController
	def new
		# @registration_form=RegistrationForm.all
	end

	def index
		@registration_form=RegistrationForm.all
		
	end

	def create
		@registration_form=RegistrationForm.new(registration_params)
   	    if @registration_form.save
           redirect_to :action => 'index'
        else
           render 'index'
		end
	end
	
	private
		def registration_params
			params.require(:registration_forms).permit(:name,:email,:password,:rollno,:phno,:address,
				           :gender,:qualification=>[])
		end
end


