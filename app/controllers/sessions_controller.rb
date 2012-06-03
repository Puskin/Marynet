# coding: utf-8

class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
			sign_in user
      redirect_to root_path
      flash[:success] = "Witaj #{user.name}!" 
	  else
      flash.now[:error] = 'Błędna kombinacja email/hasło' # Not quite right!
    	render 'new'
    end
	end

	def destroy
		sign_out
		redirect_to root_path
	end

end
